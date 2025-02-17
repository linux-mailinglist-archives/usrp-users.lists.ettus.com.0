Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC3EA38527
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 14:53:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6471385DC4
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 08:53:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739800432; bh=IRif4oU7i2aFtZzrcfoYGA8AMF5zZRMRaCF6EaCFdjk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OnE5OAoWbIZ5gJ3QefGZINH5txSCGSTsnZKPwLE1f+QMKD2kxTjFwGcTcyGi4604u
	 tKvn1GxXgBJfgYbXXetAaT+FtpwVyn8N0SK/DPmU71RorluY8aVs5e3+xVQ6uHiccI
	 eTE7GXaHe/NY//pOUKhdLbsTgE0HKuA29+H1BQX005kRFWzcFdFgwPTyZ2pi6HNfcT
	 4OTnsykhRdSi0HfQyCE49gV1pNHFgkpdLAPh6PtW/hlTsO4W0u5wpJtgDuQ7f+ozh9
	 p+g9xJm9tOSXzqmkJB+DjcNOBOTMRgz6aSmIWrRk74mBfq6xnvpk5qhFpWZFGxGZ+J
	 F9CuKSO9XZTZw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E05D6385DC4
	for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 08:53:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739800427; bh=PN/wvSKhGhGdXqlFrQt1jlUJnexn+5pjH/lcYHVKZX0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=lcNikFCLjByeI0lmv0WHilzaU66uCYU+cd5ZeYlykSAbdpFovIC+RYuHgg3OQt4ax
	 oDlIHXiolfr2/6aqhhMLTSTVFzJ8c9nGWF0QgSx2EbRkRv/00W4l+nzZrhRW3a9bMM
	 bw9WYron23MvbMYjOvFo+saYtGjtmOIjvCmAsdKxOnkzfisqcyHTogKmeL8+V5VMxr
	 sD/C+1pjszlwuylL4V7M8UtHepjJa6DiFZ/3mlgucSVPNSSqmeC7Rb/0b51gpfylIU
	 njChT1s1Jj+ktGxLvtZ4RgC7mxXg8qNZwuiLMs8Umb5Dj5azaq18v8xX3nzlUkDmT3
	 pYss/771snuPA==
Date: Mon, 17 Feb 2025 13:53:47 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <oRjJ8JJjqaFpTWLS13PbsQj3WXnjLCjZNcCgZqxx3Y@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A4eJ+OaBm0Kbw5C-f1JeTMUaytgM0oyJSjaX85aFHizjw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: ZBFTQE2R5JLIOT6S4TP7QKF5XC6VGNXF
X-Message-ID-Hash: ZBFTQE2R5JLIOT6S4TP7QKF5XC6VGNXF
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZBFTQE2R5JLIOT6S4TP7QKF5XC6VGNXF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6066344714150117971=="

This is a multi-part message in MIME format.

--===============6066344714150117971==
Content-Type: multipart/alternative;
 boundary="b1_oRjJ8JJjqaFpTWLS13PbsQj3WXnjLCjZNcCgZqxx3Y"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_oRjJ8JJjqaFpTWLS13PbsQj3WXnjLCjZNcCgZqxx3Y
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for your reply.

To answer your last question and give you some context. =20

The ability to monitor FIFO status would be for debug purpose. The applic=
ation we have that is interfacing to a custom RFNOC block via UHD can get=
 are stuck (randomly over some period of time) and I am trying to find ou=
t if we are getting stuck in UHD layers or if something is happening at o=
ur end.=20

We do have a try catch to handle =E2=80=9Cop_timeout=E2=80=9D  (and std::=
exception) when using peek32 and poke32. I have not seen this get trapped=
.=20

Many thanks for your help

--b1_oRjJ8JJjqaFpTWLS13PbsQj3WXnjLCjZNcCgZqxx3Y
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks for your reply.</p><p>To answer your last question and give you=
 some context.  </p><p>The ability to monitor FIFO status would be for de=
bug purpose. The application we have that is interfacing to a custom RFNO=
C block via UHD can get are stuck (randomly over some period of time) and=
 I am trying to find out if we are getting stuck in UHD layers or if some=
thing is happening at our end. </p><p>We do have a try catch to handle =E2=
=80=9Cop_timeout=E2=80=9D  (and std::exception) when using peek32 and pok=
e32. I have not seen this get trapped. </p><p>Many thanks for your help</=
p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>


--b1_oRjJ8JJjqaFpTWLS13PbsQj3WXnjLCjZNcCgZqxx3Y--

--===============6066344714150117971==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6066344714150117971==--
