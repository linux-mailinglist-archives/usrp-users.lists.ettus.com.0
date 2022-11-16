Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B3762BAA7
	for <lists+usrp-users@lfdr.de>; Wed, 16 Nov 2022 12:02:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1EB6C384173
	for <lists+usrp-users@lfdr.de>; Wed, 16 Nov 2022 06:02:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668596523; bh=qwJf3Y5rUkj7J7VL4O7E+VcQrOcxrQ8L9Uh3zLERh28=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=y3ehfPZtRJe4jSpRC96+4Xxu9v/WqsIMyT9ILWpt/o3quicfUQ5gMaSY8X2BLsWlt
	 4V8TqQK5jU6NDccA/dbY/qX1Eu0EK7iyaD9v6bGtDsrrYOPjEMh69UOvDPKUQwvpo4
	 UIUOP46p/t4Lm3T2/k5PzmRUqscwRftAXZU+3SOHuppNhe97vZD91vpuBj8KJuUViA
	 iWzv0tTYiNKb60aWY61ffCdM6qWIwC5atUF45GbFXGAf+gFFJbGIldV58EFVYfZb9J
	 azdUwAg9U2PE1U8Jy6+fekKUEu9QoEF9VSQ8SgiLg8bDLosDphbAcdES6xDSQe6+m2
	 ALyecqCHxCg6g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6477384114
	for <usrp-users@lists.ettus.com>; Wed, 16 Nov 2022 06:00:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668596432; bh=r7CkFg5BVXmxAGYUYMYjs43f2gUvsmFmDmHD2Qht31c=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=nBNnYeeBR1iRwK+D2gDauAV5UcpfdN0lpVqsP0nxLfGiByNevrvEEHneZwSbLBmaX
	 YkWsTyEQWAeX4dRbEJ82yMZL2znaYXrBvjjMSs1dEEw0LV+rsUMeS6hduV3RrJVeF2
	 IW1O6fu9mEkaqg7uBmbFAUsOABoahJHBsnGbxXcg5cipL2fIuxZonS4VTp3lmvNS04
	 s8o7H70AgMe9Avcat36RYH+MMZyisHRlyCgz4eu2vz4bc+hOaFuni3hwlewK+NP4f6
	 5AcihBUXmqHHAbPnCQ5rvZAGgtWCLF0mz/S3Br4kqCvWUfXXjrq5/R/KalENv2P7WD
	 syZGSGfAOWtYQ==
Date: Wed, 16 Nov 2022 11:00:32 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <o3jNUno6CQgbgXt6JqDZ0UqEFLqHKCGOGKhCkBjSrdQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: BrvweKGy5fCPuVFN3dFMFLyGC9V2dqHsCb9JsmR4@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: T4K6O67A4XKMKGQ4X4ULLHXYXZQ3XEZY
X-Message-ID-Hash: T4K6O67A4XKMKGQ4X4ULLHXYXZQ3XEZY
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Sample Rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T4K6O67A4XKMKGQ4X4ULLHXYXZQ3XEZY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2514204072164676540=="

This is a multi-part message in MIME format.

--===============2514204072164676540==
Content-Type: multipart/alternative;
 boundary="b1_o3jNUno6CQgbgXt6JqDZ0UqEFLqHKCGOGKhCkBjSrdQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_o3jNUno6CQgbgXt6JqDZ0UqEFLqHKCGOGKhCkBjSrdQ
Content-Type: text/plain; charset=us-ascii

Regarding ZBX, it is important what will be final IF frequency between ADC/DACs and ZBX and\
how close it is to the Nyquist rate for different requested frequencies.

You can try to analyze rx and tx tune-maps in zbx_constants.hpp in order to find that out.

Best Regards,\
Piotr Krysik

--b1_o3jNUno6CQgbgXt6JqDZ0UqEFLqHKCGOGKhCkBjSrdQ
Content-Type: text/html; charset=us-ascii

<p>Regarding ZBX, it is important what will be final IF frequency between ADC/DACs and ZBX and<br>how close it is to the Nyquist rate for different requested frequencies.</p><p>You can try to analyze rx and tx tune-maps in zbx_constants.hpp in order to find that out.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_o3jNUno6CQgbgXt6JqDZ0UqEFLqHKCGOGKhCkBjSrdQ--

--===============2514204072164676540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2514204072164676540==--
