Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9417F69D26C
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 18:57:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2D753818CE
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 12:57:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676915825; bh=xuTyTNRGzB/yC1eugSORcnIrrRtxD+XZtay2bSS7SuU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gwavIg+bC2xxf6KFs0dnBTCLeG7Yg7mzZQF9T63RyGJyS+4iEetRNs+ZYUdrhJ/Hl
	 uSycphTkU7tbdTNTnCgypMXbdNZv93r7IZFeQlwBfuKo6KBgPd9BfhPLEgGKIwgyHw
	 bxfodyNCEvKRSXOgSH/Ai3buk9DJ0/3PX4uP/lgZolf5eNyt3zTT3JgyXeZ8rx14gq
	 wi4ij/6lJ89/MSuJ3kUVJN8KzW7S8Ks1Y1KjREtoSoU2BtjT7/JaXj3+H9kvnBSxPo
	 oGEuQiyy6ImH33NV7inXrRWA+PZ0ujKXi0AGtYtYdgmwJjSYqlWT8vR5XdQgB3yssz
	 RkL50MqJKkZkg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3277380EDD
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 12:56:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676915779; bh=KP5FTtPr7J37AGygdRUV+cxPA5u4C22Z0Vychzz/0gk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=O981uPBnyZSRTEkME+x+pym3dMga5Rew3XXP1xOmQIKbJVsSxA/JI/r6otjpTak/p
	 BukQ1uYx1uQPXQCMw5sG5oEPVsai7gzHmepP0e9/yIahAk6iVtdwcQsFthlesytc7u
	 ZZTjJlFhRuJ6tcypAPmL6JEpaQua+xgLsNfYhM/gVXQbdsShxZIAuxzQ0B6QoBTIOR
	 DygoY67TBwlPiOnAT4P/rW97i1lV+uGzpNY7w+CzqYn59PuclvqetvbIgnoDIp+DON
	 v7rIwZO5Lyx8qcoiOBg4b201cJ5edHD8uFFH1FzdMkXEtasx2J037E77+xkfpCIQ2u
	 25tdIRaPhUmgQ==
Date: Mon, 20 Feb 2023 17:56:19 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <6grmw7ZRu7PqJguSjEXbMV75d836HD9x2CcemjDe4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: cc7bcf15-5a8d-289c-9c75-5070e92552af@gmail.com
MIME-Version: 1.0
Message-ID-Hash: W3YLIOQ6K3V3B7JVXJVI2Y622CL6QNGQ
X-Message-ID-Hash: W3YLIOQ6K3V3B7JVXJVI2Y622CL6QNGQ
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: benchmark_rate throws error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W3YLIOQ6K3V3B7JVXJVI2Y622CL6QNGQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2845300139845098437=="

This is a multi-part message in MIME format.

--===============2845300139845098437==
Content-Type: multipart/alternative;
 boundary="b1_6grmw7ZRu7PqJguSjEXbMV75d836HD9x2CcemjDe4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6grmw7ZRu7PqJguSjEXbMV75d836HD9x2CcemjDe4
Content-Type: text/plain; charset=us-ascii

With the HG image, things seem to be working fine. I can benchmark, and i can collect samples at not only the full rate(25e6 MS/S), but at a higher rate than the XG image, which is strange.

--b1_6grmw7ZRu7PqJguSjEXbMV75d836HD9x2CcemjDe4
Content-Type: text/html; charset=us-ascii

<p>With the HG image, things seem to be working fine. I can benchmark, and i can collect samples at not only the full rate(25e6 MS/S), but at a higher rate than the XG image, which is strange. </p>


--b1_6grmw7ZRu7PqJguSjEXbMV75d836HD9x2CcemjDe4--

--===============2845300139845098437==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2845300139845098437==--
