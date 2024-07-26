Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F90093D2CC
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2024 14:08:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DEE38385B11
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2024 08:08:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721995703; bh=US4CRBb7gjo1gZyImJiwgaPrl1mlM1vFsxPpP+xiICU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LvL0B0xbBoKHRSM9L7MMqUS7YwfheYMnlfgYyJsfbplIO563KtPlIXQL1Jl+Cj+Gk
	 Xa8PFZrl3J0hQbX/TCc97cmz2Lx/Pf1YVdqJnD2WIPdvt/t305mby82NgSDB9oZPN+
	 VsXPl2Oha7Mf/hPISGp3fPLO2jeIS+1JeJvHYQ8aQNSSaCBQSqYEt76tVybVtipd/d
	 ehPFtsL0NtYWlJmQQgsNXo588pCVq17tONoueAA9uOD6CxzIh318jrx4K2VcqgcifB
	 knSaRmEOrwQPxj4tk2BJPHfMgZiLFDSpQ1Ri+NnyZlIlOLXQ/dNQ7J/0KTYo+UH1ST
	 ijTSRZJG68L6Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B812F385A9D
	for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 08:07:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721995653; bh=5hQV2NdyZ0tpLAWTP2LfE5TF3YaWuxNtlJnHuqCJqPA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=u/SgVgdRarzuG6jK111nvsqnOITogdEnHAH7kXBeBiqr3swfvdUfCzaK7FcM79YXX
	 9QeGiXwx0VNwO+x+G0iZmPPFX8IjGZSsmohPSi5W2BByfVvzFcuGvPBQMj8gL2IdLW
	 xFU2xvAM5Dip7+vUNtH1hL11IeGoeybdthk+ZlMGGuwhs5i4Ql3O9mrpS4oVAW7sxt
	 ezCWcqV6A+f2ipfnyqaN6TEIuGW1o4AhYvnD6oYOoBGJyQHqgIW/PYlqtKZ35Izld6
	 zpvGwhslWOwZ+xDmyYNu1Wt4SAx4enmL0mERvt/Q1aY3JPUPT8xsLHYcw+dbODErPl
	 n2+d3l1M6aTjg==
Date: Fri, 26 Jul 2024 12:07:33 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <XkyUC3A0mt5SVWYQFi3dmQgNcNrdRb2Nah31Kg9VwIY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 1185905888.18769541.1721983436583.JavaMail.zimbra@tubitak.gov.tr
MIME-Version: 1.0
Message-ID-Hash: AHR4B6AXQABT4FLI5ORI5RFIJAZPNVOR
X-Message-ID-Hash: AHR4B6AXQABT4FLI5ORI5RFIJAZPNVOR
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Run time error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AHR4B6AXQABT4FLI5ORI5RFIJAZPNVOR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1479380076174921688=="

This is a multi-part message in MIME format.

--===============1479380076174921688==
Content-Type: multipart/alternative;
 boundary="b1_XkyUC3A0mt5SVWYQFi3dmQgNcNrdRb2Nah31Kg9VwIY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_XkyUC3A0mt5SVWYQFi3dmQgNcNrdRb2Nah31Kg9VwIY
Content-Type: text/plain; charset=us-ascii

see the following reply by Hannotier,\
\
https://lists.ettus.com/empathy/thread/GD6JE7NLNOWEKWOJSQSXOH6HRMTJQIAC?hash=LCSRM5UCKGGJMAMKF3C4ZRB64L63QS4F#LCSRM5UCKGGJMAMKF3C4ZRB64L63QS4F\
\
traceroute and observe the results as well,\
\
or reboot via serial comms and see if it persists if the device is within your reach.

--b1_XkyUC3A0mt5SVWYQFi3dmQgNcNrdRb2Nah31Kg9VwIY
Content-Type: text/html; charset=us-ascii

<p>see the following reply by Hannotier,<br><br>https://lists.ettus.com/empathy/thread/GD6JE7NLNOWEKWOJSQSXOH6HRMTJQIAC?hash=LCSRM5UCKGGJMAMKF3C4ZRB64L63QS4F#LCSRM5UCKGGJMAMKF3C4ZRB64L63QS4F<br><br>traceroute and observe the results as well,<br><br>or reboot via serial comms and see if it persists if the device is within your reach.</p>


--b1_XkyUC3A0mt5SVWYQFi3dmQgNcNrdRb2Nah31Kg9VwIY--

--===============1479380076174921688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1479380076174921688==--
