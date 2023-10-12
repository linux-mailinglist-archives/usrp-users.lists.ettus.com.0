Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CA27C6DB2
	for <lists+usrp-users@lfdr.de>; Thu, 12 Oct 2023 14:13:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17BBD385ACB
	for <lists+usrp-users@lfdr.de>; Thu, 12 Oct 2023 08:13:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697112798; bh=X7sM88bE7oNJ3wJX5LmWCe5UeVX1MIecGFQ8+J/Auok=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YB4jIqHdePFcVRQj2QLL7tvFK9Cse74nnEatFNRMxhkk9Pub7lDAUWWL341A8q0Xj
	 Lqo91u8UcW7xcZijfOjc8NR1UCrREELMykI5YPWhGWx1H9Tpp60l5OiZ1DAht65ivW
	 Wbj0XRCPdqoWBv+JiL3BYoJrEnGoslOzHCzeFJLXfmHX6HaRDb9Wu19WvfmOQ7UHuI
	 YZjzmYwPjg5E6+IW2GWMd6fR1I8SCfKj/LYozmsdMlD717j+tnKZSXaPelaR9G3fKf
	 HjL6uHlxJdYGhgcauh5nbrY1kEtZgJL69cKD3kUn2TdP7KXPEnz8+vl3rM/qkIxacS
	 oWRKMX138FJSg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80279385A75
	for <usrp-users@lists.ettus.com>; Thu, 12 Oct 2023 08:12:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697112757; bh=GnqErJeax7PTxrKdrTLbPQg7R7MYozY6tM8U7frivKA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=tePnSZxR91tMeXE2h16FWniECWGiZiqN5ctyFXcqAkSuV4KjA3418uL3YuhuJiJMG
	 7T92KOPdOldLjN7sdxiLqrew6eDmiOSoIUQaW5fVcSc55bjTY7EYQqJPISf9E8mDrh
	 vzV037+QyGems5y4RUkSwl99SgvudB2yrvMtXcpeWHn/c3Zwmw//IoPvF+DAV5+KVz
	 pRhl2HfeELZor40O4TB1nO/GHIWQSJG40yT3y+6o7cAsAIFTbz95jilsdGbhr3b0mM
	 2XH/LIOD0i+gZXq/HSx5SgdlryFHSYQoKB4heFYN3tynk0XbTl7do1vaMkQozkZMgK
	 SIOi9dud93rEg==
Date: Thu, 12 Oct 2023 12:12:37 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <2U4be32s0NcX94vHr6oC5oiQGvkDJdqPWW8IqrG3Hks@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 112c6dc9-7f28-412d-ae39-91fbc7d02a7d@gmail.com
MIME-Version: 1.0
Message-ID-Hash: M3RHES2OCI5YKOSPLZ3KAC5ILYHDNS5P
X-Message-ID-Hash: M3RHES2OCI5YKOSPLZ3KAC5ILYHDNS5P
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Not all UHD logs showing after adjusting log level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M3RHES2OCI5YKOSPLZ3KAC5ILYHDNS5P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4696871594447434791=="

This is a multi-part message in MIME format.

--===============4696871594447434791==
Content-Type: multipart/alternative;
 boundary="b1_2U4be32s0NcX94vHr6oC5oiQGvkDJdqPWW8IqrG3Hks"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2U4be32s0NcX94vHr6oC5oiQGvkDJdqPWW8IqrG3Hks
Content-Type: text/plain; charset=us-ascii

I am changing the variable host side(i.e through adding the variable in bashrc). I am assuming this would propagate the variable to the MPM as well.

If the MPM logs use a separate variable, what should I do to adjust its logs(adding similar environment variables to the x410 did not work)?

Thanks

Joe

--b1_2U4be32s0NcX94vHr6oC5oiQGvkDJdqPWW8IqrG3Hks
Content-Type: text/html; charset=us-ascii

<p>I am changing the variable host side(i.e through adding the variable in bashrc). I am assuming this would propagate the variable to the MPM as well.</p><p>If the MPM logs use a separate variable, what should I do to adjust its logs(adding similar environment variables to the x410 did not work)?</p><p><br></p><p>Thanks</p><p>Joe</p>


--b1_2U4be32s0NcX94vHr6oC5oiQGvkDJdqPWW8IqrG3Hks--

--===============4696871594447434791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4696871594447434791==--
