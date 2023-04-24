Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2BD6ED144
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 17:27:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E968384285
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 11:27:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682350025; bh=k0JdkkZuCJRHVGBRGtRfEK6MAjRJDcksPOIWZ851Ehs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=v3T0cn9TRxbMPbwI1MWnQxhHfaZ+qfUM53Ag1VF3RGmk7eN4cLuSbK+Nmt3f7yvsj
	 Nu/mrOTzhGOrL66+1p8IhZNPbqQCx+MzExIp5WGVjdlmQmNE1oE+a2mz26w8fxbBdL
	 haCAt9MTasdkTG/oeFvRsBmcoC2ekUkXqoj/itv4x/ktg0AlFflR+gUfsYYB86vQyx
	 MZliVLwDzaR3PJh9xERgUj/90/dV6z5fn43hxhJC916J1UzQFOAwpIxaQkRi6+djO4
	 x5gL49WQT6g145e9aXuqobyg5PWcn3H7x/axrEFUhVOrIYCpxGZ2FqE0+ufBzdplxT
	 3UgzUdtuyrlgw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1359383F93
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 11:26:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682349985; bh=HcN9qlWPAQ4lwFHFKGI4ucAbxulr7gHdn/7NRhvmXQk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=rGdBagSgYYhDPNm2/4gL6Pd8NSsuy2EpH63vOSjaSgN84sps8bzD4GldunZAQx552
	 Ki6UdN8I6dGtXSSPBOTgPC0IJm2yP7zCU7VXUQffWiVvzimIMQBoFTNFMOvdZJcs14
	 pAuHChIGkMNi1TL03xdrk83cK9UoZqgQHE5YfLl6wG/9gWbkhL2Ez/AcvRxuQHaGxj
	 +/iAWvTphw2jYWe/jeWrb3ViP/pHqXvTjpqTtUJ4kWvrfzdzbZUNBH+x/eFm5vYPoG
	 xd7b2DuE+k8htIn/cG7UiDD6xterEzANsX4QMT4B1Ayl11e/r/gn5F2zRWunEB4GmQ
	 K1+OmdVgYFhJw==
Date: Mon, 24 Apr 2023 15:26:24 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <vPAiISGeTmDhGndsudnwy1FuJmOB6b14r67COmh6kw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 1e958c37-f136-f933-fe9b-ed015b7527f8@gmail.com
MIME-Version: 1.0
Message-ID-Hash: BQY75C73GE7FTW342LYIXMTEUHTKZGJ7
X-Message-ID-Hash: BQY75C73GE7FTW342LYIXMTEUHTKZGJ7
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BQY75C73GE7FTW342LYIXMTEUHTKZGJ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2701551352255127879=="

This is a multi-part message in MIME format.

--===============2701551352255127879==
Content-Type: multipart/alternative;
 boundary="b1_vPAiISGeTmDhGndsudnwy1FuJmOB6b14r67COmh6kw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_vPAiISGeTmDhGndsudnwy1FuJmOB6b14r67COmh6kw
Content-Type: text/plain; charset=us-ascii

Thank you Marcus.

--b1_vPAiISGeTmDhGndsudnwy1FuJmOB6b14r67COmh6kw
Content-Type: text/html; charset=us-ascii

<p>Thank you Marcus.</p>


--b1_vPAiISGeTmDhGndsudnwy1FuJmOB6b14r67COmh6kw--

--===============2701551352255127879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2701551352255127879==--
