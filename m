Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B06260DF10
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 12:54:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58C1E383D04
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 06:54:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666781661; bh=l2b5r3NnWDKXHCwLzgH4Q42hKKpMsGjuPIZtLN7bqBw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tuq+S3XygUp7+4askjdvj07yxtf1szsYQSmNpIHhBpyoGYmgw4ewjS2UZ2RV/2Oak
	 Hbmm+HB7WnDhbBT3scGHaw7Xr1gHc9UkI6otsExOyq6avFIQy8zRV1g6TWBsq8rJWy
	 xuXO6YUBEqceXGCkAbvxUMRqz2g7tca5jxLdv1fFUuyZr5Nc6MhgL0XOWP+qjYR1RH
	 AE6j1HaMhY8zCaDVpnsX4WiPxZlyV/8xe/l3RRUTq0nV2Ti6JKb0BWB+UEQyJWw7nF
	 6e22ejWBJy8yGLYc/XoNicH1TjXbZVSe2biMfMKd3KIVSAOckiB1t4rAdBQsZKQbiq
	 SrWk1ex4ecMwQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A189383C57
	for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 06:53:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666781612; bh=i+XIau9srGlX1hzsagePBJDktimEjt1r9U6zkaqNWWU=;
	h=Date:To:From:Subject:From;
	b=uHG0l+4Ws6NzJlcTgG8SW2lIwmzGvvrQUPQMPf5P3h90T2rvEKapDDgSSs0wZMhKz
	 FSNtMyj0Q4hvJjZxgYPoscVvS8pOkaMhbNS0siOrPC4xfKk2u9GYcdnULQInm6Rb7S
	 QlknPSp8mMlobRcmgtQ/n8rJxN30TvbEI61qJc74fL5nNGEIU8V8paTxdS2E/hzhme
	 quivrh1gshGUXQonkJlFik0LWz4exv9GcQlpWs0A3CfkIUdLeWNPx92NPugBa/VhhV
	 dbHsTv3s4wxsymGNTqbcdnwNiJBjibQYusQdNtJ1J8h+/ECFtPSdTTDA1WV3uB4tiy
	 mZ+YsAdGGsR+Q==
Date: Wed, 26 Oct 2022 10:53:32 +0000
To: usrp-users@lists.ettus.com
From: adri96roll@gmail.com
Message-ID: <2liEigXaBpkvDLiVbfMRGNKQSjPRKEV388L7RkzQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: MAHXQCABVY3C3QKVILSO2TTICIFRZFXV
X-Message-ID-Hash: MAHXQCABVY3C3QKVILSO2TTICIFRZFXV
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Simulation after synthesis or implementation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MAHXQCABVY3C3QKVILSO2TTICIFRZFXV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2642940606533278609=="

This is a multi-part message in MIME format.

--===============2642940606533278609==
Content-Type: multipart/alternative;
 boundary="b1_2liEigXaBpkvDLiVbfMRGNKQSjPRKEV388L7RkzQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2liEigXaBpkvDLiVbfMRGNKQSjPRKEV388L7RkzQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I was wondering if it is possible to make a simulation,, and how, after s=
ythesis or implementation because i am not getting the results that i was=
 expecting and i don=C2=B4t know why.

Thanks in advance.

Adri=C3=A1n Campos

--b1_2liEigXaBpkvDLiVbfMRGNKQSjPRKEV388L7RkzQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone,</p><p><br></p><p>I was wondering if it is possible to mak=
e a simulation,, and how, after sythesis or implementation because i am n=
ot getting the results that i was expecting and i don=C2=B4t know why.</p=
><p><br></p><p>Thanks in advance.</p><p><br></p><p>Adri=C3=A1n Campos</p>


--b1_2liEigXaBpkvDLiVbfMRGNKQSjPRKEV388L7RkzQ--

--===============2642940606533278609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2642940606533278609==--
