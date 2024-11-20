Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8119D439E
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2024 22:38:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 249E5386225
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2024 16:38:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732138734; bh=dfAaLR1hfu4maInOeZuBOB9SZJN+ePTJ6d0+JQQ1BjE=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=wCtfXy1tul4yQhg5SF4TjXiDvEJjGXhPpatCKtemfQ+/Y2+SVe1OBQQsw2y/EgBII
	 XOvkunY9CEa3lQ4Pbv1Tfvv+8j0CIG/1Lsduu02GwHzU4PoaLi7N2/f2Ffgtdi9UEH
	 I7xTSfrIDcvAVI6g5KCkIzC6tikGdzMxEiua2RdETrz9L5d4uX3kjmZaHbIqpSpkBU
	 wce0yQPXpNcYKaXucHhHlzb0Ag4kFfqPBRaXJ6uVTLJla+kpHv4tMa8NFV95nkEXWm
	 U2MEmA6i11GvMRnqKppPZ9/rAadBuIZu1FQvLsZInp8yDlh/Q+TGmFqh6P4EV+uDWq
	 ExOeqyhyPbSeA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9478B385EE7
	for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2024 16:38:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732138705; bh=RMNmMfp7ZbuEvZv/wtJyCQocN1t5llLJpxNT/+Vnuf4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ZMtStWheDCUcHDfoV+GIFK6eJUKZOo6gLyRwjkaq+iLOM+D1X8cmMcWhqZQQ8ehzu
	 QZYQ9wh1vn+N/OoPmBU2fek55GcqQJJ24OLvaQ592azQE6Cd5cO+fEAOhE8VQ8vPBz
	 m6lrKjKVptI4NRqifQSph5OUoUTuKH3+dW6QvlXpiOepdsPwG+xetJoryBhhS2IXYA
	 tgrkfvdi8HyyvPjbDFApMBTDWkCqygsdbF6N7UXelGyOYhr401FcXRZCX4tYScnfr3
	 xO4PQQjeJXvffrk5asHRxHrJICEhfzNeCSFCM4d98L2sNpPYnpM93EAeiFTRME0MmV
	 G3TenEkOaC1Gw==
Date: Wed, 20 Nov 2024 21:38:25 +0000
To: usrp-users@lists.ettus.com
Message-ID: <in6Vs0ePFYK6PpSML7FpRjOlYUak7skNKCPMx2ieI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEL-RA2JbyizuZ-kJtaEDq6PAKs0MD809+c=8WJDNZiWT+0MnA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: CM2CB5FWCKGEGMFM5YX7MBSLCC6VJPEE
X-Message-ID-Hash: CM2CB5FWCKGEGMFM5YX7MBSLCC6VJPEE
X-MailFrom: william.haftel@bluehalo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can only control 1 pin of x310 GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CM2CB5FWCKGEGMFM5YX7MBSLCC6VJPEE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Will Haftel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: william.haftel@bluehalo.com
Content-Type: multipart/mixed; boundary="===============8890255481207164988=="

This is a multi-part message in MIME format.

--===============8890255481207164988==
Content-Type: multipart/alternative;
 boundary="b1_in6Vs0ePFYK6PpSML7FpRjOlYUak7skNKCPMx2ieI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_in6Vs0ePFYK6PpSML7FpRjOlYUak7skNKCPMx2ieI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This doesn=E2=80=99t quite work for me - in the last example I gave, I tr=
y using 1 mask to set all of the bits high but still only pin 0 is set.  =
I am able to control all of the pins using ATR, but am not sure why the m=
anual api isn=E2=80=99t giving me the same results.

--b1_in6Vs0ePFYK6PpSML7FpRjOlYUak7skNKCPMx2ieI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>This doesn=E2=80=99t quite work for me - in the last example I gave, I=
 try using 1 mask to set all of the bits high but still only pin 0 is set=
.  I am able to control all of the pins using ATR, but am not sure why th=
e manual api isn=E2=80=99t giving me the same results.</p>


--b1_in6Vs0ePFYK6PpSML7FpRjOlYUak7skNKCPMx2ieI--

--===============8890255481207164988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8890255481207164988==--
