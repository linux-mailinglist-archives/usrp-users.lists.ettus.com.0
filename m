Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F44E6C5986
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 23:43:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 89040384521
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 18:43:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679524983; bh=g8aJHHP+V+Pwoo9bwX6u6mPHyAkKq8xuxHe6ZQGvuzc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jzC1qEQv6WPpY8pO1TfoRA3ax9gTwxjv6q9IwX44YFZByPAckwAQHFF4Yu5wd4f8G
	 o0aIz3qLtxS9Q7xaVaJ3qT2bfghzGoOMRmTRrjzS2z350xk+ywvv0xA5fJlPl6opK8
	 URMib5Em4IDxwN1ZXjnMK9nZ/ILUPounThYFMJhihzvP+O8Jy+GmFk61YPny0JbG1h
	 juPUr+1IoC2WaFjXGEX7aniuB6tHP+3CYMZK6ujEjtABo+CrwVLXl9qiLydoMDLRLm
	 84ev5Uy27ImrE/qISZV/OjBa+qsIOAXKOocLUKwIgjItF7z8JIfWU1PZodMZDNkM3h
	 sZeC6ID00CX2A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6FC0384521
	for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 18:42:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679524976; bh=17M2xkGTrq5x5xR49XNpUr8YPX6EXOPGi3CBHugtIwg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=HzhBMSp7LnbifogDU4Wv8JwFoSzhuHViVILBeD5hbCCBeUIaEbY6oWA0oADR6d97M
	 vN/pR3P6dJIXtXipaw+EDUAkC12syO6/RcofeagscVV+dvOucLtWJUjCBe7BHWieFw
	 pPjqZYrwKuPLkux9PkG/Ac3Kp/w+RZg6UdJkmi8d8z0O7FzJTYUUU36VUoOqVdJvin
	 TWIgBM46tIhWK6t784pAu1yd0Lxt/DCM0anjEJAQjHGZUYxylmyyKgjDHHvIlDFERB
	 zly/x7wADB7+of9PeFpds+2b2V9Tbl3vAq97A2tz8eCugAybdodXlVXLc8ACFJ6V9o
	 FgAI5RJt0ykiw==
Date: Wed, 22 Mar 2023 22:42:56 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <xmI3iK0V47RcCPqgkkDO9Is3AR18bgJn7GAyg470Xnw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a1e76c5d-18f7-7bef-600b-5affdf16fd7d@ettus.com
MIME-Version: 1.0
Message-ID-Hash: SZ6ZRJGPEYSR4YR57VABAWFHRJZE6LQN
X-Message-ID-Hash: SZ6ZRJGPEYSR4YR57VABAWFHRJZE6LQN
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Recovering signal from IQ
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SZ6ZRJGPEYSR4YR57VABAWFHRJZE6LQN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0198342745888789029=="

This is a multi-part message in MIME format.

--===============0198342745888789029==
Content-Type: multipart/alternative;
 boundary="b1_xmI3iK0V47RcCPqgkkDO9Is3AR18bgJn7GAyg470Xnw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_xmI3iK0V47RcCPqgkkDO9Is3AR18bgJn7GAyg470Xnw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Nothing interesting, I am currently just =E2=80=9Ctoying around=E2=80=9D =
to understand the device(and sdrs) better, and the lowest the closest ava=
ilable signal generator I have goes to 100 khz. I was using 3 Mhz before =
but I figured if the API was telling me that it was able to be tuned lowe=
r than why not try reducing the input frequency.

I am currently just interested in trying to interpret the data that comes=
 from the ADC. I saw on the daughterboard there is a lot more going on th=
an just two mixed signals, so I am asking if there any particular formula=
 or considerations I should be making when trying to recover the original=
 signal. Ideally(for my application), I would be able to directly sample =
voltages on the antenna, but since that is not possible I need to work ar=
ound this instead.

--b1_xmI3iK0V47RcCPqgkkDO9Is3AR18bgJn7GAyg470Xnw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Nothing interesting, I am currently just =E2=80=9Ctoying around=E2=80=9D=
 to understand the device(and sdrs) better, and the lowest the closest av=
ailable signal generator I have goes to 100 khz. I was using 3 Mhz before=
 but I figured if the API was telling me that it was able to be tuned low=
er than why not try reducing the input frequency.</p><p><br></p><p>I am c=
urrently just interested in trying to interpret the data that comes from =
the ADC. I saw on the daughterboard there is a lot more going on than jus=
t two mixed signals, so I am asking if there any particular formula or co=
nsiderations I should be making when trying to recover the original signa=
l. Ideally(for my application), I would be able to directly sample voltag=
es on the antenna, but since that is not possible I need to work around t=
his instead.</p>


--b1_xmI3iK0V47RcCPqgkkDO9Is3AR18bgJn7GAyg470Xnw--

--===============0198342745888789029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0198342745888789029==--
