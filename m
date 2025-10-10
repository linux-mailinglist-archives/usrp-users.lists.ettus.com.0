Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C8FBCE1AD
	for <lists+usrp-users@lfdr.de>; Fri, 10 Oct 2025 19:38:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59DAD385E6D
	for <lists+usrp-users@lfdr.de>; Fri, 10 Oct 2025 13:38:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1760117930; bh=SfcW9b/tPkXEyMDX8PJNrdgglURvW2lGECbJ+Sowe4A=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ZRbfOjxUard8gTgdocnyHlZz7m1uNQ1nzMn7l8N43GOooo6p+D99ar5vuHx9+FzmS
	 VJkEQc/3EVPy38irouQME51jD9zf9qNS3T/6SL4Jb+zK28fZDplQSV0UJsynENO8Rl
	 n69SHDbMWhZVfU+8avl9a/J1Cs9PcAajF86+gMpGUbhrSPsKOW3PKefCHxP7iE1Cvr
	 6iF7pqvyYKbIGZfQba4VDUC7ruc/qT2ut+0BLH/VSovE1roMr01FuFwUeO6dHB2pgz
	 cvTHqbgXME15+ioKmUhS29SoQY+UdRmWmXlaEKuKgvBfn7S5sxseanFK/3Sy0K3fR+
	 nXrpix36odD0A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BD02385A52
	for <usrp-users@lists.ettus.com>; Fri, 10 Oct 2025 13:38:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1760117899; bh=pjyQg/P1FXdTG4aO8Dc0wCJbtx3sWsZ79w1EvIF4SUY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=pA7FY862UC0tQvBPqhHdjnmhZAAh9DrPQImiT4wM/kt7YBlkCQiKGRhD0KtEE4p9r
	 YSnSwkaJmjpeIRjsqRqRjHUx6AsCqDN1tpATn2iLsy4vGkvxowfVgwedwpSS6FFeMZ
	 QYKgLmmGIG05Mm+HJ/eI52LGA2UtDJsW1O2CQWEbGSxoHEEGwd/f+OBwc8s+c7ItJB
	 KdV5LK+05zaA1md7Lg7UKIpjIjYQg+iGwX7O33e+lm7nzEv3NbgyV0LYXmno/3MOpA
	 jQydclYeulCR5TkWo0+nRhFOD4woGPd6FMMiMBjaAaVXSW2VxXz91Au/xBlUSnuWu9
	 Sx/rnc0DCjsww==
Date: Fri, 10 Oct 2025 17:38:19 +0000
To: usrp-users@lists.ettus.com
From: ryan.a.wolfarth@gmail.com
Message-ID: <LYxbu7mvc8dLEsPDguObe5wxRaD1pHx8giJruKGllU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A7uT73GzWHoMMnDqq1zqSASYpOfSX3oHpqwAfaG5EdJ_w@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4435VSI7GDKEIXIBSRPAQP5UKDU5ASG2
X-Message-ID-Hash: 4435VSI7GDKEIXIBSRPAQP5UKDU5ASG2
X-MailFrom: ryan.a.wolfarth@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accessing DDR within OOT RFNoC Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4435VSI7GDKEIXIBSRPAQP5UKDU5ASG2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1132493975281618684=="

This is a multi-part message in MIME format.

--===============1132493975281618684==
Content-Type: multipart/alternative;
 boundary="b1_LYxbu7mvc8dLEsPDguObe5wxRaD1pHx8giJruKGllU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_LYxbu7mvc8dLEsPDguObe5wxRaD1pHx8giJruKGllU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Brian, Martin,

Thank you both for your input. I=E2=80=99ll let you know the result early=
 next week.=20

Thanks,

Ryan

--b1_LYxbu7mvc8dLEsPDguObe5wxRaD1pHx8giJruKGllU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Brian, Martin,</p><p>Thank you both for your input. I=E2=80=99ll let y=
ou know the result early next week. </p><p>Thanks,</p><p>Ryan</p>


--b1_LYxbu7mvc8dLEsPDguObe5wxRaD1pHx8giJruKGllU--

--===============1132493975281618684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1132493975281618684==--
