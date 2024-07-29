Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CBE93F5FD
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 14:58:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F2D6385798
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 08:58:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722257908; bh=wUfxQirYEgcIJ6ls9ggAnn0XxW4KdnHD6W9wNfKe5qQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WttFouyvR8tGclAZIkAJpMlZwTzw/DhDJluF55NrY+ZLr7bEEyS+bU8+R6koNeI79
	 ELFA/ync1O8AWJG2FSeERxDNVH5bQ5BejyYdQc2U+oC8o7dmX7nAHUzWIdTsi9QsTo
	 o3InKDag9P6dofRFvPSh/gDCGD1TB29en7rvF+ZUIXIZ592Lrnt76Q5X5/g6IpT/uM
	 j7PzVz8s9csp58f1nmxeKzSkFG2qasFSBJ/nGV9rUT/aschCacHcfIMicFpFotZhle
	 G1B2CAnez7UDHGH+ewvWbkrITEXkLRNSrQ9QqeboPdtN0irl+y40jaAh/mxgNQnHbE
	 BU7y73zJ5hcbQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1A2B38567F
	for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 08:58:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722257889; bh=cQIaS77pk82tCAcakN70vryK2BeWequKHWu7PPUjOO0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=WecvAIaeLbg21PlCtY0SGR/PF/mHUH7wWJwWm3UJUk4kuM1Na+LA6CIpJUWudDwWf
	 dWgbhKzMVJcRPtjf1O16BIUGtJDmPePq8IsNk9zUA1UjNXwjoATUAPK/0wAU9RHBsR
	 RexMVg/ZAErTYMA9UHTNXsuSAC3Fpvbvpi8U+IysCyqdtrSHAFaOaW+cg821tkR9KL
	 SLJmKdAqK9b9R17v7ZcXhVFYX5pW+6jnoTtmy+yjZqA7iKNkbX5XeJKsF2TH3s6N2h
	 hgwAevYg0IGfh6QuI7jKDMUh+cGtjsVSYnVUNsyvZdiWO+J1ZrIk/QfdIb3RjEERKA
	 q9xlClM4JFYag==
Date: Mon, 29 Jul 2024 12:58:09 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <qhsrPlsmp2L4MZmpSdc8IiitIRDpoe6Bj2Qg42COgSs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 52170075-FEA9-4982-A346-554ACD90AEDF@gmail.com
MIME-Version: 1.0
Message-ID-Hash: FA7TDYJ2QNNNRE3KVPHSON5MUXDTD7JY
X-Message-ID-Hash: FA7TDYJ2QNNNRE3KVPHSON5MUXDTD7JY
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: About the Port Power Ratings
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FA7TDYJ2QNNNRE3KVPHSON5MUXDTD7JY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7728782219756283911=="

This is a multi-part message in MIME format.

--===============7728782219756283911==
Content-Type: multipart/alternative;
 boundary="b1_qhsrPlsmp2L4MZmpSdc8IiitIRDpoe6Bj2Qg42COgSs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qhsrPlsmp2L4MZmpSdc8IiitIRDpoe6Bj2Qg42COgSs
Content-Type: text/plain; charset=us-ascii

Hi Markus,\
\
Thank you for your quick reply,\
\
Eden.

--b1_qhsrPlsmp2L4MZmpSdc8IiitIRDpoe6Bj2Qg42COgSs
Content-Type: text/html; charset=us-ascii

<p>Hi Markus,<br><br>Thank you for your quick reply,<br><br>Eden.</p>


--b1_qhsrPlsmp2L4MZmpSdc8IiitIRDpoe6Bj2Qg42COgSs--

--===============7728782219756283911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7728782219756283911==--
