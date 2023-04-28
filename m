Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8746E6F1675
	for <lists+usrp-users@lfdr.de>; Fri, 28 Apr 2023 13:16:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0832A3800A9
	for <lists+usrp-users@lfdr.de>; Fri, 28 Apr 2023 07:16:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682680563; bh=CIQqmaBphOczDZqbPEV5PXBq7ObnmhUO17RSiYBE1cI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QhgkS3o/szJoRw9evEMR+Sm8Ktdb0LMxz9LtN3nBmD9aQkLUBAbMErNOpsT2Xk1Im
	 XsXeIaYPQ+dXDC/PKytq3JWRuxz6H13lW6FsTbFZgHC6nb+f+P1k40vuCtBDZHJnAD
	 UjEZbQxzSsUBCIgto0iShgnBGFYVMKcOsDTFNoD34DfSt4PL90y312Lj/eClNR+vFz
	 2e7Gs8R1unCK5vjZnbybtXiKJKG9wzEvS5Estr/m0/2YJ9v7bnHZfkMOgh4v82WBMl
	 lv/zvLCgmtdmHHZW1/9L2dVxfPH2R/AD21ySmhbNka8XfLKX3kAIvnXs47Sl5lXoLd
	 58dXS1kRGy3rA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E99A538417F
	for <usrp-users@lists.ettus.com>; Fri, 28 Apr 2023 07:15:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682680524; bh=IwSxIqiCJSnZk091bYP9PuMTYJuSNG2Hfc6Kh2ZgsoI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=JvE5aaRMoBEfopKqJw1HIBshYJY/ugU/OWJImrfo4hxIP8cKTZdnkY+FRTo01mG4n
	 MNSaTFwpFimakXfV4hNCBHFKt7dDlfGkYKZVt+Punu+7KjA8whbnZyHULABQzrFOmu
	 nSWjBPDIxXCKaqSLfiOjCRqoEFhPPHcl/gFNfNWfucgiRL0JPDaGk/bUG0+1nwaqFQ
	 c/wKeBKKzZZMOPWs6fud5CND1EKxP1+mqqfZVdj3uhafvcv9u+qhHqzCSRZcGBHvDO
	 YBdrv5RU0lELGA6T0jpiFczZ0DgH/XWfogKjWL6yu86veHNQC9LBUXk74WV7wpowkH
	 p2UFCOS+hW83g==
Date: Fri, 28 Apr 2023 11:15:23 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <MJJuY7rLAVE0l0v4gtqooJBAPYA4OZ2aC2aQWJnEE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: c46eccea-2b18-08eb-bc50-1e490ee14230@gmail.com
MIME-Version: 1.0
Message-ID-Hash: HTZ5XZCVCN523LFT5J6DSNR6GSP7F7ZE
X-Message-ID-Hash: HTZ5XZCVCN523LFT5J6DSNR6GSP7F7ZE
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HTZ5XZCVCN523LFT5J6DSNR6GSP7F7ZE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3174544631142918284=="

This is a multi-part message in MIME format.

--===============3174544631142918284==
Content-Type: multipart/alternative;
 boundary="b1_MJJuY7rLAVE0l0v4gtqooJBAPYA4OZ2aC2aQWJnEE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_MJJuY7rLAVE0l0v4gtqooJBAPYA4OZ2aC2aQWJnEE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

I have performed some tests physically looping TX/Rx to RX2 of the same c=
hannel, and results are the same. I tried as well to turn off and turn on=
 the USRP between 2 consecutive tests, and It doesn=E2=80=99t seem to cha=
nge anything.

--b1_MJJuY7rLAVE0l0v4gtqooJBAPYA4OZ2aC2aQWJnEE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p><br></p><p>I have performed some tests physically loo=
ping TX/Rx to RX2 of the same channel, and results are the same. I tried =
as well to turn off and turn on the USRP between 2 consecutive tests, and=
 It doesn=E2=80=99t seem to change anything.</p>


--b1_MJJuY7rLAVE0l0v4gtqooJBAPYA4OZ2aC2aQWJnEE--

--===============3174544631142918284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3174544631142918284==--
