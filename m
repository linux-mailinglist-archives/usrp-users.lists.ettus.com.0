Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B4566A260
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 19:49:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 319AE38427F
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 13:48:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673635739; bh=9arA7v94y9IiP8jucQ23VYaWJZ+QAH4G9JsV7vGCCM8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=sRQxGlf83dGIbOFdoKPraNCfXQVz8f61rGIW5/W2nluLknpEKu8d/hvCqUH7Fa7Qy
	 OyZA8dEP4KSeRIufojoa8LOtTx57ehYW5nlNlChB60iGwkrAb0weooCIvwF8cmvsMr
	 95LJv2X0Mii14AUFx9np6dK64hdX/h6kCSKUuEYdMuu53vIETu2K20dbILro7T91Vy
	 kk3f6oikUjAh75/KklLswqBA1zai0KkmkM0YNkZVCZlR8fy6nCyUi1YzWnek+F1Na1
	 EPEXFJ99lgiKNWx6x5v4NXb0P5IbfcNl3ssuPUj2dE8i7GX0cDzdgKvaJ92biX/T1Z
	 +vsj/1V7nvZ6g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 491A0384351
	for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 13:47:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673635660; bh=fFb5tGI0jUlnmELQ/cGjguyS6JRWjLDtwRwT2L9xxYk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=lxtrG+3psUxa02TEYfnFZOaqbBewfOQCgdmwAkaGK09NanNoBbDedzQugcLvn7Ub7
	 PWaW/vp25phH3wnd3fZ+tGONj6Ll7Nasw2nqsv58+PdeHvNRyNgt1NojH8TjLQ28CB
	 IRyPw0/iMQ+YW8uG015j6tQZc+AH7lFisE4bWNMxfCPV7Xn0pVGCSa+uy+p3jORJdp
	 HrA2pHKR+f58SjnF4qSz0xYf3yc/2bcUc8HQwmHCgUIIspee+YgQqAPGIolzWcJ3g/
	 fC9VYPxkX7CZGDUAO7I72zgfEEunZa/UQgr9qn5NqybjNfCAJekC37lqruSS46mHnh
	 6ThzNvfqY173A==
Date: Fri, 13 Jan 2023 18:47:40 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <1npIe9K6rHfFb8sw9vQXet8Y0KXgBnTWyTmfLF12pLA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK65VP-A73PgDS2yB9opE2VB_K1zxOuXk31KEDHwB3j2cA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 7W2XSTYBYJMERPPPGRY5HSCNMJ62WUK5
X-Message-ID-Hash: 7W2XSTYBYJMERPPPGRY5HSCNMJ62WUK5
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Starting FPGA development on Ettus N321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7W2XSTYBYJMERPPPGRY5HSCNMJ62WUK5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3252695661284516693=="

This is a multi-part message in MIME format.

--===============3252695661284516693==
Content-Type: multipart/alternative;
 boundary="b1_1npIe9K6rHfFb8sw9vQXet8Y0KXgBnTWyTmfLF12pLA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_1npIe9K6rHfFb8sw9vQXet8Y0KXgBnTWyTmfLF12pLA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have run the setupenv.

build-ip is a folder that is made when the makefile(uhd/fpga/usrp3/top/n3=
xx/Makefile.inc) is run. Removing it does not do anything, but I did try =
commenting out include statements in the Makefile.

I tried commenting hb47_1to2 in the makefile, and it proceeded since it d=
id not look for it. It asked for hb47_2to1, I commented that out and it m=
oved on, but then it looked for something called axi_hb31, which I could =
not file in the include statements in the makefile.

The errors I get refer to an IP being =E2=80=9Clocked=E2=80=9D, though I =
am unsure how to proceed from there. Some of the IPs have been built succ=
essfully

--b1_1npIe9K6rHfFb8sw9vQXet8Y0KXgBnTWyTmfLF12pLA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I have run the setupenv.</p><p>build-ip is a f=
older that is made when the makefile(uhd/fpga/usrp3/top/n3xx/Makefile.inc=
) is run. Removing it does not do anything, but I did try commenting out =
include statements in the Makefile.</p><p><br></p><p>I tried commenting h=
b47_1to2 in the makefile, and it proceeded since it did not look for it. =
It asked for hb47_2to1, I commented that out and it moved on, but then it=
 looked for something called axi_hb31, which I could not file in the incl=
ude statements in the makefile.</p><p><br></p><p>The errors I get refer t=
o an IP being =E2=80=9Clocked=E2=80=9D, though I am unsure how to proceed=
 from there. Some of the IPs have been built successfully</p>


--b1_1npIe9K6rHfFb8sw9vQXet8Y0KXgBnTWyTmfLF12pLA--

--===============3252695661284516693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3252695661284516693==--
