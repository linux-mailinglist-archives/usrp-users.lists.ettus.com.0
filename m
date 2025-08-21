Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E71B5B2FD29
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 16:46:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B9BD386680
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 10:46:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755787588; bh=ERZmofnptpXNmHJRtuZ53xussin0TuKB3OWFvWLGKaI=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=rOQj3xuNdw9Gx4tocDFFeBLGwfmXFQ2o5EwHwsR36w8I3+KH2MiqzD1e0pZ1kMey7
	 Ded7267hpUlN2Wx0Olh2MhU3sLF2SsbudcDZ19nI9w/NF80+a7DQs0OAtrihblQ66S
	 gEagoTdLBAbyZNJ03RJJ1rv1m3FujJtou3Z77URQAVIqMOBe1E0ogKRMeG8aOv7KCQ
	 ad8lcK6z5jW++mJoaJAGeQfx32m5v+Ue/pxzJtOycnyXH6jceU6sGd3YWd4AOJ2I6t
	 mK/MgM6y0ma+hi1QhcfBEOBMLol2icdwI0NQCiux84hH6bIf7judry1LqbxN6nTclR
	 +0CO5w/UKm8dA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFFF738666E
	for <usrp-users@lists.ettus.com>; Thu, 21 Aug 2025 10:45:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755787547; bh=W1OO7e9xuqOBESzjozGQ+81EQitYmjdnnYYIoz8xNeA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=YcLkbosyqrHoL2pg4uRNa5Rqmsx6SJz6P1CXcnJhD8u3/7/rojEWIsqHNvZ1KOZSx
	 TpJkUSyhTBtbEkXoaKDT1Mea8aMf/o/brAtN38BNQ7mSE9fF8Ctnm7wpvTFdcthiJv
	 /rBTk5kpE47R8eeit1CaQqGbtpIk2QZNuGRbOWY7eGPDgD/HYiFnYw3d4CfVBs44/r
	 UYPcHQ42PlRYUVBQP9vIZb8VBXNhyNgL96OvJGQqKpL/ENBPY1hJt41YtrbfX0nK95
	 FeyG+e5K5n/7y04j6mEt2aqLIZtKtPFHeUo+Dja9T0DRTrtalh5Pn73nCwFllBSHX1
	 oAA5dRj+3NSUA==
Date: Thu, 21 Aug 2025 14:45:47 +0000
To: usrp-users@lists.ettus.com
Message-ID: <bqiZaJrprUOyErXwl0zNM012RWGauIwzThFQrLcJEWM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: EyqwXIECdCjm5ws9Hhc2V4wISRqDCqh8FV79Y6oi68@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: THSLZIBH3QNSIXAFTGLSGS3YBQ7JBRWT
X-Message-ID-Hash: THSLZIBH3QNSIXAFTGLSGS3YBQ7JBRWT
X-MailFrom: rfserranor@indra.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error with ettus x440: Failure to create rfnoc_graph.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/THSLZIBH3QNSIXAFTGLSGS3YBQ7JBRWT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Rub=C3=A9n_Serrano_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: rfserranor@indra.es
Content-Type: multipart/mixed; boundary="===============2377206082983577576=="

This is a multi-part message in MIME format.

--===============2377206082983577576==
Content-Type: multipart/alternative;
 boundary="b1_bqiZaJrprUOyErXwl0zNM012RWGauIwzThFQrLcJEWM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bqiZaJrprUOyErXwl0zNM012RWGauIwzThFQrLcJEWM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Martin,

I have took a look to the manual that you linked in the reply and i can s=
ay that i followed all the checks (in order) and for that i logged in her=
e in this forum. So i do not think that the part of the manual that helps=
 to avoid this problem could help me.

Thank you,

    Rub=C3=A9n.

--b1_bqiZaJrprUOyErXwl0zNM012RWGauIwzThFQrLcJEWM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin,</p><p>I have took a look to the manual that you linked in t=
he reply and i can say that i followed all the checks (in order) and for =
that i logged in here in this forum. So i do not think that the part of t=
he manual that helps to avoid this problem could help me.</p><p>Thank you=
,</p><p>    Rub=C3=A9n. </p>


--b1_bqiZaJrprUOyErXwl0zNM012RWGauIwzThFQrLcJEWM--

--===============2377206082983577576==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2377206082983577576==--
