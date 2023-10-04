Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B2F7B825E
	for <lists+usrp-users@lfdr.de>; Wed,  4 Oct 2023 16:32:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 217CC384E1D
	for <lists+usrp-users@lfdr.de>; Wed,  4 Oct 2023 10:32:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696429952; bh=NBFTYt4X5UIqPs8nsSKdpKJecmXNzdRjcTz57gop8uI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CKwJE2PH+qfyiygw6YDypxdvWv1eieZ9v0XX0SZGRlUbozMDGjMwIseE2kgVA2qQs
	 xPDHww0VAv2i/X6ZZlVsPxSMubIz88NQrwSoiKa9g9jk0P/thKduzmLcDSJwJcayXI
	 Gbxgwmks/AM/u2FAmSxZMBRWcHM6qt5Na/o8fTbo1iad51vczWmBcb0dyxgqF20JOh
	 0/FJAf9fTrjVP+gZD43xXmugK3IA7D/hvLzZGNGfoHyJPmDcuXQF34qpJQv1Hzq2On
	 Yit3Od/B3pJynZla3Y2i272Nft8j+dbxewSLPDNJG6tQ021tAwlczRv6MDAHrSetZl
	 35mrQTlPF733A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F3824384CA7
	for <usrp-users@lists.ettus.com>; Wed,  4 Oct 2023 10:31:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696429896; bh=Ybjtx7qiJYGuKPNdic454BdUb7fhxr5JzOCKP3YcXCM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=vI6GTV1LMoWkNCf3dsmdYN6ZWlbtD11Y5aBZBROfhgAidVBwlUPn8DUEcojumSn+q
	 qYmcqgc9HT0KsCSzBHLvxDhL1dIoyTekR/DKuzWEUlHjx4pKah3gWsCDoXvwEnaD4B
	 WZ922z8rv1BYHnpHCRLP8hAiOuiPbVjTiDwuYMs5+9WdK+7vbt4wynB5awQV3YZlnz
	 J/NQd7pyYc4ld+5zTLCeAWKBzGaCcKc0VXx7m+UOcKD26js6JDiceGpS3ZI37bZnHx
	 6jHb9612irb1b2e10iOfk22DM+FOTdDZRdZpXZMHDmd2hGlRVdk4/AA6fb7yXXzJ4L
	 bpl5gxSxUqXZA==
Date: Wed, 4 Oct 2023 14:31:35 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <RXfnq73qVvyj0ol93m5IBvFbPBfudRCxQAH7we4Dw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 333b6caa-0c96-ff9e-6cee-f0bd0873a291@gmail.com
MIME-Version: 1.0
Message-ID-Hash: ZBXT2V27GQ6AMJFC3WQ7CTKRKUTJ5H66
X-Message-ID-Hash: ZBXT2V27GQ6AMJFC3WQ7CTKRKUTJ5H66
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFDC initialization in UHD 4.5.0.0 for x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZBXT2V27GQ6AMJFC3WQ7CTKRKUTJ5H66/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0814234933125064400=="

This is a multi-part message in MIME format.

--===============0814234933125064400==
Content-Type: multipart/alternative;
 boundary="b1_RXfnq73qVvyj0ol93m5IBvFbPBfudRCxQAH7we4Dw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RXfnq73qVvyj0ol93m5IBvFbPBfudRCxQAH7we4Dw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for the insight. I was under the impression that the MPM was compl=
etely host-side.

So if I am understanding correctly, When the radio block is instantiated,=
 the x410 calls the host side for the RFDC initialization?

And additionally, and I am not sure if this is the =E2=80=9Cright=E2=80=9D=
 way to think about it, does the x4xx.py =E2=80=9Crun=E2=80=9D on the x41=
0 itself?

--b1_RXfnq73qVvyj0ol93m5IBvFbPBfudRCxQAH7we4Dw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks for the insight. I was under the impression that the MPM was co=
mpletely host-side.</p><p>So if I am understanding correctly, When the ra=
dio block is instantiated, the x410 calls the host side for the RFDC init=
ialization?</p><p>And additionally, and I am not sure if this is the =E2=80=
=9Cright=E2=80=9D way to think about it, does the x4xx.py =E2=80=9Crun=E2=
=80=9D on the x410 itself?</p>


--b1_RXfnq73qVvyj0ol93m5IBvFbPBfudRCxQAH7we4Dw--

--===============0814234933125064400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0814234933125064400==--
