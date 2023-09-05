Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0467F793048
	for <lists+usrp-users@lfdr.de>; Tue,  5 Sep 2023 22:48:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18BC8384BC7
	for <lists+usrp-users@lfdr.de>; Tue,  5 Sep 2023 16:48:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693946911; bh=mHaE8tbBW8ia744gK9WovLMqkFM432gSUtpAHfHdAAw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dtFoS6qosNUHLXVj9120uT/RiahBkhb8DomuElIxjEV1x40P/Np9twTruC9nBOdHK
	 NeXqJJelNH8tLAZtWIde3Ljx/w+KVegGTeCTPkIK5LvQa1UKCPoDUxqrxq5Wb2X6nm
	 kJof7DR/8uGq4ysSdKZyeYbbQ72goNFBahHvi+3gdJ426JDKAuB8mhdQ6+27/Y7qfj
	 0gs/ATz0jBOKTLA6N3Ii3x+diLf0xUUBFRYne7YuVu5AcBxFd0aROhgouTW+qVL4Xe
	 5x8/B3q8xwn4bSrVAIs9hZ3jM0Nl3YW7vLaetUOLb4DsthOkBHHylpsnj1F1uvN4mN
	 Cs+44k0xcOJ3Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88B3E380BD1
	for <usrp-users@lists.ettus.com>; Tue,  5 Sep 2023 16:47:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693946850; bh=PfPuo2MvEZs97/8p+TBNEXyYfhONfjQlEM0glnourDY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=SAp519xFbbIjEDDUqz+70R8SSE/HhYuuruIRZ4JrxGx8AooPhQZ4EvYWLkzsoMlQX
	 ozUph1dLRim0PS/+JVWu7PO6o4WTijYRziSEUVloLGfiiYkU7zcVELDmYq8E8u8hBc
	 JWEC9ZgrSKfQ7oIsMLfLWNlokd95DJ06pv3+nx6DIFU/uc4cLh9qnfTpygYZIJvu3g
	 s7g8519DRs4gXu2wYlI3SNWI/yarBuEz/Nknis/Ww9O4rdVqZSeCm12L/KMKao7NKl
	 HlrOt5MleCOdZVqB5iGWPk7IADQASTODgcQETTWIz1lXtiGo4oCqpUHoLqSycXHsLu
	 lGDchWL4bIYrQ==
Date: Tue, 5 Sep 2023 20:47:30 +0000
To: usrp-users@lists.ettus.com
From: blakebaldwin@uvic.ca
Message-ID: <oN4tm4mAmAtr8ei58rPWMvZNHYQUsJANxGyViu5ULk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: fd60d5d1-78de-4480-1f21-d662c1256e15@gmail.com
MIME-Version: 1.0
Message-ID-Hash: CGUMK4TNWTHEHXJA57PYHZ6LONTQE3LC
X-Message-ID-Hash: CGUMK4TNWTHEHXJA57PYHZ6LONTQE3LC
X-MailFrom: blakebaldwin@uvic.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Channel B control for GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CGUMK4TNWTHEHXJA57PYHZ6LONTQE3LC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8159789070291428449=="

This is a multi-part message in MIME format.

--===============8159789070291428449==
Content-Type: multipart/alternative;
 boundary="b1_oN4tm4mAmAtr8ei58rPWMvZNHYQUsJANxGyViu5ULk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_oN4tm4mAmAtr8ei58rPWMvZNHYQUsJANxGyViu5ULk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99ve seen this before and it is a fantastic resource for GPIOs. H=
owever, best I can tell upon looking it over again is that there should b=
e a second =E2=80=9Csource=E2=80=9D on the B210 which just is not there. =
When I run get_gpio_src() I get an error message saying the command is no=
t implemented on the motherboard.

--b1_oN4tm4mAmAtr8ei58rPWMvZNHYQUsJANxGyViu5ULk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99ve seen this before and it is a fantastic resource for GPIOs=
. However, best I can tell upon looking it over again is that there shoul=
d be a second =E2=80=9Csource=E2=80=9D on the B210 which just is not ther=
e. When I run get_gpio_src() I get an error message saying the command is=
 not implemented on the motherboard.</p>


--b1_oN4tm4mAmAtr8ei58rPWMvZNHYQUsJANxGyViu5ULk--

--===============8159789070291428449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8159789070291428449==--
