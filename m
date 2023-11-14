Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E277EB985
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 23:40:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 27A63384B99
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 17:40:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700001621; bh=JXSqXYXxCnUSw3kuEBjUFqPaL2SwQXaquro2xEpBBzw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=v3flHYIWDa7T6mL9ULIOO0U470nUBS+gGtCL2WJSwW6pWpUdlydsNXB24Oj8MvPFk
	 9nWogXw7GgEKwJbWoaKgA+iHNJFKgAs2XraIDzT9wvgns1wqEtmmzRiwrAfv0BfzUT
	 MH/YHogUAa6PO1Y3sqTT42zJZn0arHhFOUzbXDmwCytpLWbWQpeA2/wGVHb/CZ8l7a
	 H26/ljhWZVTaVGvRXWno8Y0nBZxsPq6QLxIh+0pAcURp1qrfo/CLs7p+2UePzMeiWY
	 La0iG6FiPuIAPC7utIPUoHM4lg1EH2WWrXbP5VzU4XkKXdH5I1oEmdZV/LgHy3lGOq
	 eTwo4U1Bdom3g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B42CA381331
	for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 17:40:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700001604; bh=7lffChfvS56nsNPHvxHRQUwCF0eeotGZVe7ChXcoc7s=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ilZ7MmrQERtG+/ijgfZJrXCKQW0q9AQprQ0vsBmPNnR96eFl0t1e7tWhAFgmMgWNq
	 rXyzy9woQNdQFe2dq8u4zuh07fdh4Aj41i12wyJLZb/zjorpTa6c/XtfyLnv5THpU7
	 eaGEsEU6SHH6I6Snmdjuxx8S5ejUEF048nG8MlGKzo3p/rdBWC04Bdz0CUDIW0V2au
	 /6MNLqHAKPOublS/NxUIIdpjZkOO6Ec6QlVd6EgX3dvZax8DJ0Tx3cngW550wUkx8G
	 WxicEi6+C9txGnkUm68xCZljxjuH4G1fEEFxZeQ+/PxMSxPe0qfPdMC21hYuIKkwm4
	 5qS3qFRj89LtQ==
Date: Tue, 14 Nov 2023 22:40:04 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <2NvKETQYSWrPAtzelokWuYDmI0Jb4VHa54FtGJJtg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: m4SWDApUBCV2XwU6iTEKN5bOyjY7vLPmbciLI4bJb44@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 2Q3FNHIO7RB4QBHFRSJDCNXP2GZIKTFA
X-Message-ID-Hash: 2Q3FNHIO7RB4QBHFRSJDCNXP2GZIKTFA
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2Q3FNHIO7RB4QBHFRSJDCNXP2GZIKTFA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8789843040505496063=="

This is a multi-part message in MIME format.

--===============8789843040505496063==
Content-Type: multipart/alternative;
 boundary="b1_2NvKETQYSWrPAtzelokWuYDmI0Jb4VHa54FtGJJtg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2NvKETQYSWrPAtzelokWuYDmI0Jb4VHa54FtGJJtg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I was eventually able to resolve the =E2=80=9C\[FAILED\] Failed to start =
File System Check on Root Device.=E2=80=9D using fsck tools.

I still am not able to ssh into the x410 however. The addresses to not au=
tomatically change to the default values(i.e sfp0 =3D 192.168.10.2), and =
manually changing them does not appear to work either.

--b1_2NvKETQYSWrPAtzelokWuYDmI0Jb4VHa54FtGJJtg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I was eventually able to resolve the =E2=80=9C[FAILED] Failed to start=
 File System Check on Root Device.=E2=80=9D using fsck tools.</p><p>I sti=
ll am not able to ssh into the x410 however. The addresses to not automat=
ically change to the default values(i.e sfp0 =3D 192.168.10.2), and manua=
lly changing them does not appear to work either.</p>


--b1_2NvKETQYSWrPAtzelokWuYDmI0Jb4VHa54FtGJJtg--

--===============8789843040505496063==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8789843040505496063==--
