Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 192F5886194
	for <lists+usrp-users@lfdr.de>; Thu, 21 Mar 2024 21:23:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BD9A938503D
	for <lists+usrp-users@lfdr.de>; Thu, 21 Mar 2024 16:23:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711052582; bh=FD+pRtscOK3Z39SE4f4sapQhXsW1Q9+6fAt9zY+Rr8Y=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UAwT83LU/pmnE3Mihy69uzUrTSO/G8vk1wcriSc1VwoT0ZikFrSRGaNRyj//rDntH
	 3l3y8OhzwE1I67bWhrZMzG2xDz7TutGnTTUtmZLJbH/o2XkR8kAm1OcsIxtkGBhbR9
	 HvJi1KKqFzC4Y+29HDOK+MJenAja6mUbbkMmD9efwj4IuimE3tgiBXojjiMGzw9oMu
	 HyaeDtihSUzRl/HSXrlMv1EUHsFC0rZW3x6Rg3XwAI2yp79Qoe8w79439B1T/SwHkx
	 TnUcrDYy2ptpR+9A5wAwybjG8xy6G/v5rhlC3YdLqIukW+sxyeRJ4wQ2u6NpYnlMk4
	 gmTfNGeGGs0DA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9C313384DA0
	for <usrp-users@lists.ettus.com>; Thu, 21 Mar 2024 16:22:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711052520; bh=0n/5AKtJT06EiBUp583HwNf5lKA8pA/KNllvINOy6Ko=;
	h=Date:To:From:Subject:From;
	b=ldhbJ7u3newgAPktUSGP3tkQqidmURhMMmy0v1/wHNZf77MotiIiY+N5+g699qC6n
	 SRygcsVYnfSE5bjU7XqWQDeG5wbejwujkvc+KiTzucsPi5/QZfmTRJ3Sj8Bhl4aR63
	 Ghqs0oJPYZO25dqLuQrv14Jf7ykHW7dgwzd8zgPBxLG6UU1zTAecBpXnB8izWUJH/L
	 5DrbpzNS22XBr425mXUfivRtDJ0IrIS2gh+ZeOOX51GRn38W+opf0dcrY86ZAzWhrr
	 ajIUcVV53NPHNcWzSwU0FLg8q++HTI6Rsl+vEX3/s6ND882BboETV55HeuPRtrb8Xb
	 4dUD5wsAYDvaw==
Date: Thu, 21 Mar 2024 20:22:00 +0000
To: usrp-users@lists.ettus.com
From: yguruprasad@umass.edu
Message-ID: <o5XzIW2HQcaFtvwdxFPpOA5P8yPgVsm5p0eIk5WJfk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: WT53U6RIWJGZ6QQOARCPU3PIIKIGGFMR
X-Message-ID-Hash: WT53U6RIWJGZ6QQOARCPU3PIIKIGGFMR
X-MailFrom: yguruprasad@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WT53U6RIWJGZ6QQOARCPU3PIIKIGGFMR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0683650112749064182=="

This is a multi-part message in MIME format.

--===============0683650112749064182==
Content-Type: multipart/alternative;
 boundary="b1_o5XzIW2HQcaFtvwdxFPpOA5P8yPgVsm5p0eIk5WJfk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_o5XzIW2HQcaFtvwdxFPpOA5P8yPgVsm5p0eIk5WJfk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Added keep 1 in n block , could some one give me details on how to test t=
his block?\
\
I=E2=80=99m currently working on usrp x310

--b1_o5XzIW2HQcaFtvwdxFPpOA5P8yPgVsm5p0eIk5WJfk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Added keep 1 in n block , could some one give me details on how to tes=
t this block?<br><br>I=E2=80=99m currently working on usrp x310</p>


--b1_o5XzIW2HQcaFtvwdxFPpOA5P8yPgVsm5p0eIk5WJfk--

--===============0683650112749064182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0683650112749064182==--
