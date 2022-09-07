Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CC25B0742
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 16:44:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E39C9385F0D
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 10:44:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662561848; bh=8WjVEFi83pSFyts++ec5ZvbDF8Xq5e6WEoyqwYkadSU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=hDriYu9RQ3hgcxyZNBP2Z47vXPVciTtB3bqORVCstV2QUxe5KLoGwLP2IrPDoK2MU
	 HVtxeeJiNb91Bido0lWG6ltMif8VDzEQhmgloT+reHjZN6lb0/SBEHNwjxDmMj2ZMc
	 sGIxTtWooNlY46fIv0Y+sV8Dak5QuvM546Jshio7I+U9hdwCOytusIbulqt58T0pGk
	 /R9TMv4cXy+RUB7bQH3nyNd5y56L/aSXkBcEhlW4rzKPBJn3SEzS/qsRGIL7OBVx5X
	 TH5UTeIo7be1vx3nphWBJJzChSmp031oSEcxbwULXYlNtxBAarrg6ayCOs9Oq9s/BW
	 QdY/f4Q4RAMCg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04312385EA7
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 10:41:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662561688; bh=7OCcK+GrxAUVEZMsT0mR1vJ/P/U1OPTetfQ9UoHtUbs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=J+at5QpAHji1D34aSR0e74A8pg2Ov/ifHMGD95V1+5TJFYd1D7+Kw74i1KpyynrQ8
	 oA2dbOlaKen86V8+ix6n5WbtHtyEdI0i/9K4hPGILHCE8RW82J/e9uZzfcx9Zg1uXA
	 mAOW3o+WkiMX6WZ9xm9sZLNFAbYjxdyvIsX7qRJ03WASHc9ytHq2k32EQVE93C8O9Z
	 oczwINhU5sgNKVkrpWESq1ua84MZmUXZlFT0/N1Te3TUw/bPPtMjW786dVN78wBSfQ
	 pl4UZG1ek+83XDIOzjfJoU0fj1viyKZRHm7SrWzrpLtNOzy6PQxK/pvUq8hmioLrJR
	 NWxSkiMelz/0A==
Date: Wed, 7 Sep 2022 14:41:28 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <4NDzRjIZp7KswMwJnI4ZbcC1LX1c5NuFCqk0AHp94@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAG16vQVW+wbwHyHy=dOxB_7x5DhcQb-dTh0WWrjM=KY49OpReA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 5NWOCZVDVM2SDKVZIH6OVRIZ35QO2Y4L
X-Message-ID-Hash: 5NWOCZVDVM2SDKVZIH6OVRIZ35QO2Y4L
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bitstream encryption
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5NWOCZVDVM2SDKVZIH6OVRIZ35QO2Y4L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7169802114708274093=="

This is a multi-part message in MIME format.

--===============7169802114708274093==
Content-Type: multipart/alternative;
 boundary="b1_4NDzRjIZp7KswMwJnI4ZbcC1LX1c5NuFCqk0AHp94"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4NDzRjIZp7KswMwJnI4ZbcC1LX1c5NuFCqk0AHp94
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I would guess this question is independent of RFNoC.

Anyway even if you encrypt the bitstream you are obligated by LGPL-3 to g=
ive user the source.

Unless you paid National dudes, who hold the copy-left, for the de-GPLed =
version=E2=80=A6

Best Regards,\
Piotr Krysik

--b1_4NDzRjIZp7KswMwJnI4ZbcC1LX1c5NuFCqk0AHp94
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I would guess this question is independent of RFNoC.</p><=
p>Anyway even if you encrypt the bitstream you are obligated by LGPL-3 to=
 give user the source.</p><p>Unless you paid National dudes, who hold the=
 copy-left, for the de-GPLed version=E2=80=A6</p><p>Best Regards,<br>Piot=
r Krysik</p>


--b1_4NDzRjIZp7KswMwJnI4ZbcC1LX1c5NuFCqk0AHp94--

--===============7169802114708274093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7169802114708274093==--
