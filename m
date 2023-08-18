Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 655E8781027
	for <lists+usrp-users@lfdr.de>; Fri, 18 Aug 2023 18:19:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 65780380F86
	for <lists+usrp-users@lfdr.de>; Fri, 18 Aug 2023 12:19:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692375568; bh=ANRPdzEIMXy8HIMXqDCEcM7Li7P+bRnMWpslAK9ph3M=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LeWMDgO3FMEWjfHc3EyfLiVrJ8WG4BJ00VjswSoX9Wyh12hyHzAb+xaGh4M/El3EX
	 puarAUqL4Hl4Act2dVc3I1IWcV4wnS7rUlFcCWf+m+N/MTBX/5Si+SLqi1JxxtRqAN
	 IAgP/kRK7ptURcP6M6/Fi1Czw9qLSptLdLQ+h4aNN0QkpNd/7HPtg54xrAJXQAifm5
	 3wgqmILAwKarGLmCOGdZpdg/j2NbgXNOoJbdVUnQiopkOc0BxQWj4QONeKzMmotkmG
	 k0Wx5miIajb04d1Wnc63Kn8Q8uohkOJFpmRxUJC2sgL02gHB1DNEK2r7zNT77BT1Lq
	 wYEmu0lFyt4bA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1440380BFF
	for <usrp-users@lists.ettus.com>; Fri, 18 Aug 2023 12:19:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692375553; bh=RSI0O+kzRhQAs9/0IkMlmJJpK29hbXAnvycg4v9u1hE=;
	h=Date:To:From:Subject:From;
	b=ekGpKvUwkswW+H765ivMo2JEo4MQg2hv5fjHdCNd8gACUHWTb18bsrKSmqqtWdQYt
	 2mOcBy0DQSBr8fBL5xqS7CvC2m7IPWE2VKiChxCyboEzuqF5KyNJu28aFSI24QTcst
	 XOUgG1R/RB8pW1xKjPua4JcMzR21wpUD6fKHZdM6Tvp/qYjx6hypRz4nPASR+1P15N
	 xIiUyvA30qHxjNQ7jvo/2qZyxHGiXzR3CeY+pUFki1osGsYIIwZ5NINyOCdSGGNo5h
	 MaQ3Z/dIQVxOJiJXkXLQGVf3X33YACGBUC87e7YorzFE7nZLGzf6hZ4NxNZCu4wJsp
	 9WhY8EDC4eQww==
Date: Fri, 18 Aug 2023 16:19:13 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <bKa4QcdUulGS8v8wusFxZY2UStNrb09dq5sMNTszaE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: G7A3A4AVIEPFGKQ4IRRUPN4KPTBT2KXD
X-Message-ID-Hash: G7A3A4AVIEPFGKQ4IRRUPN4KPTBT2KXD
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Accessing GPS from FPGA in x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G7A3A4AVIEPFGKQ4IRRUPN4KPTBT2KXD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4495847326622030893=="

This is a multi-part message in MIME format.

--===============4495847326622030893==
Content-Type: multipart/alternative;
 boundary="b1_bKa4QcdUulGS8v8wusFxZY2UStNrb09dq5sMNTszaE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bKa4QcdUulGS8v8wusFxZY2UStNrb09dq5sMNTszaE
Content-Type: text/plain; charset=us-ascii

Hello,

I have an application where I need my logic within the FPGA to access the gps time. According to the spec sheet, the x410 has a gps module built in. I would like to get gps time from it, but it is unclear where I can get it from. 

I assume the gps time is stored in radio_time inside the timekeeper, which is set to the gps time when usrp->set_time_source("gpsdo") is used. Is this correct?

Thanks

Joe

--b1_bKa4QcdUulGS8v8wusFxZY2UStNrb09dq5sMNTszaE
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I have an application where I need my logic within the FPGA to access the gps time. According to the spec sheet, the x410 has a gps module built in. I would like to get gps time from it, but it is unclear where I can get it from. </p><p><br></p><p>I assume the gps time is stored in radio_time inside the timekeeper, which is set to the gps time when usrp-&gt;set_time_source("gpsdo") is used. Is this correct?</p><p><br></p><p>Thanks</p><p>Joe</p>


--b1_bKa4QcdUulGS8v8wusFxZY2UStNrb09dq5sMNTszaE--

--===============4495847326622030893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4495847326622030893==--
