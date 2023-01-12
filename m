Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54988666989
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jan 2023 04:17:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE36638416F
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jan 2023 22:17:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673493475; bh=SyEWzhlzzNjea62pdST02oKzWVBEbUY0TNhsL+mu/EI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kvsyWM/gl9pq1xL1I8jFbl3OsWoh3L5bJh7aPKDYk6M9Z7Q3MITlbz2G3l2AETcnW
	 x74XY/snYllDKBlTdX6BUQfzEiN6DQJHU6wo1KAIdXFjwxBLRYSCZbt//D3TKHLKtK
	 NcxOWDkUbKBQaeYL2KixDFgmf9dYm8FFrLOKX3wyIe6UolbhG/bQm+Eg2JuTKY5lID
	 VUOYANgkIj0Q3azAunE3mCtSSt35Hm51g9AONOotYdgDSpx3k5jHO1BmgK7bYreae6
	 AlcUuk6GACJ3l+YMiXiAekITR5ttBI+2CSgcChWDtXAp5oRAy27VBerPh3BN1NWU2D
	 8TV6lHagFACCA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F569384120
	for <usrp-users@lists.ettus.com>; Wed, 11 Jan 2023 22:17:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673493428; bh=B7+GrVDzPPjva6j6u0Yj/TkfEDzHYNpPPQynPm85bBg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=YP9EMusvo6XgvjqA3D3v2jly4w6YcQ7pQYAMvc3k4fDguIoVn5hYFQ+A80LEluBaJ
	 5YCMi0H1iNzeY1c2CNPCW6lvwOg55Ow+4hK57mbaZAjZYZIi+guY4vn1dCjvYWTl9T
	 m8UPgVFkTAeIT0COQrscVT6XsxSIco3FlsEzlkSY4zmESNNImoLorlXc9PM+pRATzi
	 /RK4et/PWDOTxpOByK47I57mQb4f+R8GM84H2iQNhn2pDzwi9itstK/MzIiFy2YMnM
	 mJZBb3gKWlhOHA8v0VK+mAC/px81iO82WbIFR2bE6tgfKMYjlnXABpzF23Q3951dUU
	 st5+t1vLFyeiA==
Date: Thu, 12 Jan 2023 03:17:08 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <K78sPqMF10RbpysteXutrkWIO4aJWuYpPMaki7gDU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTTaxO1FcoFd=kt0so2CmonYnjmNWGXECQMw+2_J5R4Ubg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 42EKZWLUJ3JN6KAPG52KQ6HAZRPORIH2
X-Message-ID-Hash: 42EKZWLUJ3JN6KAPG52KQ6HAZRPORIH2
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC FFT block on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/42EKZWLUJ3JN6KAPG52KQ6HAZRPORIH2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0698841196973456196=="

This is a multi-part message in MIME format.

--===============0698841196973456196==
Content-Type: multipart/alternative;
 boundary="b1_K78sPqMF10RbpysteXutrkWIO4aJWuYpPMaki7gDU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_K78sPqMF10RbpysteXutrkWIO4aJWuYpPMaki7gDU
Content-Type: text/plain; charset=us-ascii

Hi Wade,

After applying your trick I get data flowing to the PC!

The version of UHD that I used was 4.3.

A quick test shown that the received values are all zeros \
\- without any signal at the input and without setting proper carrier frequency.\
I need to dig into that. But having any samples being sent is a big improvement.

Best Regards,\
Piotr

--b1_K78sPqMF10RbpysteXutrkWIO4aJWuYpPMaki7gDU
Content-Type: text/html; charset=us-ascii

<p>Hi Wade,</p><p>After applying your trick I get data flowing to the PC!</p><p>The version of UHD that I used was 4.3.</p><p>A quick test shown that the received values are all zeros <br>- without any signal at the input and without setting proper carrier frequency.<br>I need to dig into that. But having any samples being sent is a big improvement.</p><p>Best Regards,<br>Piotr</p>


--b1_K78sPqMF10RbpysteXutrkWIO4aJWuYpPMaki7gDU--

--===============0698841196973456196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0698841196973456196==--
