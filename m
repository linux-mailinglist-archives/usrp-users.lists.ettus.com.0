Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7758377FB28
	for <lists+usrp-users@lfdr.de>; Thu, 17 Aug 2023 17:50:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 53006383CAB
	for <lists+usrp-users@lfdr.de>; Thu, 17 Aug 2023 11:50:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692287458; bh=dv9mYEOWbHprVwDamWcpKHVwc52GTyNnJ6zhmxsUkr4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ujr9KlSraUJ6OUf3JQCSLvygc1YodOO9Y30b5ShzB2Op2rTLXmZnX3AfU8P+z4JOA
	 cvnFgzwIQrkMRSwr/JvSkXZQxd/J157YTcNkOaHclw48iRqknoa8z9UfrymoV52jud
	 dTnUvnuE4o+IB/CfQwno/ZcDFXuzSK90KocfoRRvHBsYwAl17/ZOcu+rS/rxe6NQpR
	 X8/5hf4tiZK78DK5GYbQXecQ/4S5w7p7gHYeFiqW5jSUFfKlDgEt9hbliuB106OZN3
	 q71S6JjEFkNn7xZeyAJXd37uZ+5P/3hStQEyAP2BWKYO5RHn0862HxyZTSOSnwlL3m
	 xzIVYRgjUXpeA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE628380CA0
	for <usrp-users@lists.ettus.com>; Thu, 17 Aug 2023 11:50:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692287427; bh=S9lbXNeluKxvRadfj92UaOXilj4bWjgH5sSm6dfQWJA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Qke24jrZB6xXns78kDDb05vpATRTfJDdrG6G42Gz2ZpYueUMXLzEXdxw7yxdoMsiK
	 DPemUwjzHFSp9mIAQYWsoCAYHXlZosUuWxiDs/TiUfcdtmvpdJ1YWsxdFMoH4m8vtY
	 5/KLrw42ITxu+hIwM8+L/BNyasEZyaMdrkMMxyemNNFcVs9oOY++hyb6vWscxr41LQ
	 /k7Ra7TlY+EMfqK/WdHvbQs8VTseEgrFZ81m1jtSWUI8J1epsQ382s/yr3Lb3UsNK/
	 IVImEZ99HVSVglmZYAJ7hT6VipC/QertWNnRdYQ4vwgzq2Wm8fL+5/9HyFHyvrDv8R
	 q93gFbc3pvtFg==
Date: Thu, 17 Aug 2023 15:50:26 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <S9XLA3fWiFJA8eLb3OEJrkZ18oEgvwJLEj66AmU9vws@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: kP0qO70vWl7i7RI6o1TpJ7rV0aNHqx0lN3NllbzA@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: VPOARV6JHIMJFD4ZOGI5BVXGIY37EXJE
X-Message-ID-Hash: VPOARV6JHIMJFD4ZOGI5BVXGIY37EXJE
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VPOARV6JHIMJFD4ZOGI5BVXGIY37EXJE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7418538992199115073=="

This is a multi-part message in MIME format.

--===============7418538992199115073==
Content-Type: multipart/alternative;
 boundary="b1_S9XLA3fWiFJA8eLb3OEJrkZ18oEgvwJLEj66AmU9vws"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_S9XLA3fWiFJA8eLb3OEJrkZ18oEgvwJLEj66AmU9vws
Content-Type: text/plain; charset=us-ascii

Increasing PYLD_FIFO_SIZE does in fact allow me to increase the burst size

--b1_S9XLA3fWiFJA8eLb3OEJrkZ18oEgvwJLEj66AmU9vws
Content-Type: text/html; charset=us-ascii

<p>Increasing PYLD_FIFO_SIZE does in fact allow me to increase the burst size</p>


--b1_S9XLA3fWiFJA8eLb3OEJrkZ18oEgvwJLEj66AmU9vws--

--===============7418538992199115073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7418538992199115073==--
