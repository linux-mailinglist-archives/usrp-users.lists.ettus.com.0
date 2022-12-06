Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E13C644E90
	for <lists+usrp-users@lfdr.de>; Tue,  6 Dec 2022 23:37:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF435384057
	for <lists+usrp-users@lfdr.de>; Tue,  6 Dec 2022 17:36:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670366219; bh=NE5kEjqZus8AdM6iQoGyOvm0Vi+33jypObYm79iJKBw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=J23DRYr1IOE3zwqv67HhbJjKc4PVG8p6cNLaY2lMmt0EJRjN/8tmABtO48jotOjpl
	 B7u9AK1W6X14j6o4GU47FWp+t0+pqo89pRyZsbHMiWj2l2lX+10i0syD5KNShZxWM5
	 E+c9bFMncHrqzItAIYG6eXYJrjq3NJ383OIC36q0AFgefvQZ4zKeU+SqCMxWOK5z2i
	 f2v93j211rqTdnDVeER2+wg1jVcmCJ1UIcdP8MbfZosthzOhbAn6fjFfkodzuTvG/4
	 O2dSFyWezDhf4Yupc1U4TwpYu60jtCfzBZUHqoLarB/UWIbRiPCMo76RTQH6kWCNgK
	 sZkIilbz/7vsQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 316B6384057
	for <usrp-users@lists.ettus.com>; Tue,  6 Dec 2022 17:35:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670366142; bh=CyYMzwAsFQv83Ptj9nwv4t6NW4alJ0FLii6S5Q5hi0U=;
	h=Date:To:From:Subject:From;
	b=Bx96XLofC0n4tM9RkrK6FHvTedRp2gMGJwctjL3/jJaZa2TH/FiLMemcLjQut8TyQ
	 J8qdVenlwUAhBB8uBGIW2noAkMgtR/6KEy8/dYJ0kip8UZXT5Oa/r12J8VUOZFKASK
	 3F0nPSkr5X19hw8UK2LvFw7cVXe8CuL2LPJGw6N/01+3Q+2KMKH8IXmSTVAVwnjVw7
	 TniimGtLQx7jrCAsFz6oZ1CtgYurgr67zMjg2EGMPNwnzjiCHiJHxD0CWCfULsBe6I
	 Eo3p2LpBOvkF4s7Tcv736ShPMrRwaiieo0tslDEaGoZicXqNCS661RgEaDye66OZAn
	 qzMhQuclvbijQ==
Date: Tue, 6 Dec 2022 22:35:42 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <frShdjYTRSZLl0lHVPvus03FqxrsCI1cqvsrtowPo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: DJQLVVKSE6JEUZYWMZNBIT2SSDUMSSEX
X-Message-ID-Hash: DJQLVVKSE6JEUZYWMZNBIT2SSDUMSSEX
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Debugging RFNoC exception "Timed out waiting for ACK"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DJQLVVKSE6JEUZYWMZNBIT2SSDUMSSEX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5767424403913049573=="

This is a multi-part message in MIME format.

--===============5767424403913049573==
Content-Type: multipart/alternative;
 boundary="b1_frShdjYTRSZLl0lHVPvus03FqxrsCI1cqvsrtowPo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_frShdjYTRSZLl0lHVPvus03FqxrsCI1cqvsrtowPo
Content-Type: text/plain; charset=us-ascii

Hello, 

I have a C++ application running on RHEL 9, UHD 4.2, using USRP x310s. Recently I encountered the following exception:

`terminate called after throwing an instance of 'uhd::op_timeout'`

`  what():  RfnocError: OpTimeout: Control operation timed out waiting for ACK`

I know the exception is triggered somewhere in either the ddc_ctrl->set_freq() or duc_ctrl->set_freq() functions. I am using the base RFNoC graph that comes with the multi_usrp class, I just modified UHD to expose the ddc and duc pointers. The reason for this is the RFNoC api exposes per channel timed frequency commands, whereas using multi_usrp->set_freq() requires using multi_usrp->set_timed_command(), which does not have a channel parameter.

Has anybody else encountered a similar situation, or have tips for debugging the problem?

Thank you!

--b1_frShdjYTRSZLl0lHVPvus03FqxrsCI1cqvsrtowPo
Content-Type: text/html; charset=us-ascii

<p>Hello, </p><p>I have a C++ application running on RHEL 9, UHD 4.2, using USRP x310s. Recently I encountered the following exception:</p><p><code>terminate called after throwing an instance of 'uhd::op_timeout'</code></p><p><code>  what():  RfnocError: OpTimeout: Control operation timed out waiting for ACK</code></p><p><br></p><p>I know the exception is triggered somewhere in either the ddc_ctrl-&gt;set_freq() or duc_ctrl-&gt;set_freq() functions. I am using the base RFNoC graph that comes with the multi_usrp class, I just modified UHD to expose the ddc and duc pointers. The reason for this is the RFNoC api exposes per channel timed frequency commands, whereas using multi_usrp-&gt;set_freq() requires using multi_usrp-&gt;set_timed_command(), which does not have a channel parameter.</p><p>Has anybody else encountered a similar situation, or have tips for debugging the problem?</p><p>Thank you!</p>


--b1_frShdjYTRSZLl0lHVPvus03FqxrsCI1cqvsrtowPo--

--===============5767424403913049573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5767424403913049573==--
