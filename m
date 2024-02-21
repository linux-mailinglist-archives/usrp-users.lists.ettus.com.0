Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B0185D1F5
	for <lists+usrp-users@lfdr.de>; Wed, 21 Feb 2024 09:01:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 264C1384A9C
	for <lists+usrp-users@lfdr.de>; Wed, 21 Feb 2024 03:01:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708502469; bh=DvGX1KXlZx4/HvAZWDZj4lfDhcdXxkrMybNHaShJafI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=i3aj5s9OsWA+05aiukZAWtyfWzVvjF2AmxfvwhD6ktIUg1ef+c/P0r8EizqdkaJqO
	 Qbog7o15UE9Lw210aKennTW+zNonYL+d+h1N3JtbFnbXmL2uS9Io/cREvCKIdh2tsW
	 DYDSc/acYYmESfse6vGkwI7xLES0kawGwJViCm5V7c0Jd0xnw0WpFl/6wXUcghnvEk
	 i+Ppn2UD2ZT6+WXSX7V7MV6bGgQ3blBzMVn7R6hU1DkmI+fhApUzyf02sj9WPBmfps
	 NkXgdvy0N5eu7yvDxR8eZa7oN6rgeJzgqswWY0Xeew14Dmzkgj7Df/shrXWu0i6TBM
	 6BPmUHGDRHylg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D9CD384A2F
	for <usrp-users@lists.ettus.com>; Wed, 21 Feb 2024 03:00:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708502412; bh=BNqUN1Xlsqp8AxaT+8AYWjA81ylatcA7BB+HHpG7U80=;
	h=Date:To:From:Subject:From;
	b=LVVbC7t1VGVKQcMhdGDt4SyNl4x+4i/kWc7e8rFiBttqFqENWnPwJ93dEDlrujpDd
	 6gB89CycIAmLF4CjF+3r/4lhkK3xmsn2QDPhLPPg0rG4yqHNGFx+svsQcL83eIwbbQ
	 XOdS6G0oF9mi8IsalRWsnnXasDo8GS3kSVwJMZJDkcT0snSCa+AivLJzkAbChjVw7x
	 +YOUWk9kztbOaHarU+KeZWWv08Q+1X1MsfchkRN0VSs93EQwj5fRcoxxP4ftVLrGmi
	 HRDylq7+NPnOPD227K7uFaCvfdFvviuhufB1VorncgGqyvlIDmDqHBxlXOglUvXHS7
	 zQZ5MD4FhWMzA==
Date: Wed, 21 Feb 2024 08:00:12 +0000
To: usrp-users@lists.ettus.com
From: hoosac19@hotmail.com
Message-ID: <1aWVQGIbcUggHN87wOgTxu4ntD0PAhrOcrg1f10@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: MQIEAVLRTBZ4BKDFRBDO4FKE4XZO3MSA
X-Message-ID-Hash: MQIEAVLRTBZ4BKDFRBDO4FKE4XZO3MSA
X-MailFrom: hoosac19@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Compatibility of NI USRP 2943R RF daughterboard (CBX-40) with Ettus N210 product
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MQIEAVLRTBZ4BKDFRBDO4FKE4XZO3MSA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2549755037696604797=="

This is a multi-part message in MIME format.

--===============2549755037696604797==
Content-Type: multipart/alternative;
 boundary="b1_1aWVQGIbcUggHN87wOgTxu4ntD0PAhrOcrg1f10"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_1aWVQGIbcUggHN87wOgTxu4ntD0PAhrOcrg1f10
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I own a National Instruments USRP 2943R, equipped with two Ettus CBX-40 d=
aughter boards, which I used for LabVIEW academic work.

I'm now interested in purchasing an Ettus N210 for GNU Radio applications=
.  I=E2=80=99m thinking of borrowing one of these two CBX boards and inst=
alling it into an N210 for now.  My longer term plan would be to purchase=
 an Ettus UBX-40 daughterboard for the N210.

Could someone please advise me as to whether my CBX-40 will be electrical=
ly compatible with an Ettus N210 and provide the same performance as an E=
ttus-purchased CBX-40 board?  I tried forwarding my question on the Ettus=
 Research website contact form but the submit button was not responsive.

Thank you very much!

--b1_1aWVQGIbcUggHN87wOgTxu4ntD0PAhrOcrg1f10
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I own a National Instruments USRP 2943R, equipped with two Ettus CBX-4=
0 daughter boards, which I used for LabVIEW academic work.</p><p>I'm now =
interested in purchasing an Ettus N210 for GNU Radio applications.  I=E2=80=
=99m thinking of borrowing one of these two CBX boards and installing it =
into an N210 for now.  My longer term plan would be to purchase an Ettus =
UBX-40 daughterboard for the N210.</p><p>Could someone please advise me a=
s to whether my CBX-40 will be electrically compatible with an Ettus N210=
 and provide the same performance as an Ettus-purchased CBX-40 board?  I =
tried forwarding my question on the Ettus Research website contact form b=
ut the submit button was not responsive.</p><p>Thank you very much!</p>


--b1_1aWVQGIbcUggHN87wOgTxu4ntD0PAhrOcrg1f10--

--===============2549755037696604797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2549755037696604797==--
