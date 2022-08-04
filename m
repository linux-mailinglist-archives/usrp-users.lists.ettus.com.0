Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D5E589A78
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 12:31:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 671393810BE
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 06:31:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659609063; bh=/yCZ/5d5pobCe0zun8XLGeQn6lIYX9ak0ROs2fE6ENA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=H6K+yruLvGOEjnqozQBscsRPxJVUyc0A35fWVTzJ9J5AimCQ8Fvh2QUQu2DChylKL
	 XlN8sqie4jjkMPdTmNxq3sW0FHtOuBCjr++pQjDAXdSv5SjkMYWZcCyBsixBjJ5H89
	 83Zcd778Gm7YaGnnqSTQVfjkvaPatmA7vndWv2P5G94WfQUbYPogfvBcqgRIrbGfFl
	 t/HBQNR3aer+7yL8qmEVCgtJGxtaIRhezFK4vGF14jSiAKLSf0vEOKM05GSFeTRSmH
	 nZE/4Nz6Ed2dAS3447iL+D3QbDooO2H6DnIgneHyUXs5CunMxKvwH+cLpF+s6M9A20
	 +m7lFsXM+Ob9Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 217E03839B7
	for <usrp-users@lists.ettus.com>; Thu,  4 Aug 2022 06:28:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659608935; bh=W0cpbdecI01WIREEjJXbDgqcCFPmrMYfIDHII6B+hUA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=AeVcBqLbiFcJUinKarPOiRX7KsW0Uz0FE21AGSH+ZsSYEo5y5rHrHs9Tokh4NPKLc
	 oGFUVNIHhIOU8bfZisSL3BtK29ULb63ReKLURw4lT7Ob2jXe1UF8TjsdqZEpgoq3nC
	 pWXCmxuVD75NMBzwJQeFKZnl8iuYeM4cLJjzwzzDEXue/Ic4mSxT5dDcET4RCulj0C
	 H1BOmK+MNF0UTK8NIVfD0BQ3koAW36bpv2gkZOsnmD1nHMV01h4qEApKd5XVpnsIr7
	 AJmbtAGCBSrc+DjhoDm6F0dJh1kaR63qgeXzbaWld4d36+/xOpCZk66KRUh0avUoYm
	 NcKwRnM4FeeNA==
Date: Thu, 4 Aug 2022 10:28:55 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <pDoXa4Vqp42pFOZuspVOFoFc5oMQjAIt3tZ4C5KB4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 20220804082254.u56t2v3zbsfit6yc@barbe
MIME-Version: 1.0
Message-ID-Hash: 5STH6IGKX2SHAUR6OJ2OUJR4V74E3BK2
X-Message-ID-Hash: 5STH6IGKX2SHAUR6OJ2OUJR4V74E3BK2
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Decreasing Power at Higher Frequencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5STH6IGKX2SHAUR6OJ2OUJR4V74E3BK2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4307547026820414507=="

This is a multi-part message in MIME format.

--===============4307547026820414507==
Content-Type: multipart/alternative;
 boundary="b1_pDoXa4Vqp42pFOZuspVOFoFc5oMQjAIt3tZ4C5KB4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_pDoXa4Vqp42pFOZuspVOFoFc5oMQjAIt3tZ4C5KB4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The data I share, I gave all of this when connected by cable. I calculate=
d Friis calculation, too. But, Signal is transmitted by directly cable. I=
 don=E2=80=99t think this equation is necessary.

--b1_pDoXa4Vqp42pFOZuspVOFoFc5oMQjAIt3tZ4C5KB4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>The data I share, I gave all of this when connected by cable. I calcul=
ated Friis calculation, too. But, Signal is transmitted by directly cable=
. I don=E2=80=99t think this equation is necessary.</p>


--b1_pDoXa4Vqp42pFOZuspVOFoFc5oMQjAIt3tZ4C5KB4--

--===============4307547026820414507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4307547026820414507==--
