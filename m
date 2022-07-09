Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1707856CB46
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 21:41:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A18833841BC
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 15:41:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657395680; bh=107lPwNJ04pOF4xT3wxgM7S4lkvg9qwjPNhhbNp18dI=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JaPZ2RRXaP946ZT7YGdr4OaTzfUdkZAUaHXV7SPPBWR9bkYPkr7SOqfyXPEWCrgFO
	 nqmi7nu3GwF+A/bVozOaRGR4HxBr++FtliLiDdEzRN2ToWcpE22zPiXcUOLmCX+mND
	 4GUktJOsfbDa9yOe+s5xZcTnWzkX7g1tAPNY0rs12S2DWHZGUTrM0IuvDB0968yihG
	 RyWMQ7ZpsZTuLPxJ4TuivTkWjdGs1SPbw5JqeJPCRntUySL7BNq1rEKFZBrwGWDWcM
	 K4wzIlT5iY1uO9Z7VHT3/xYi2HhpunZLVBdDvaGxdCsXtkxPA3GLps/ezya8GKDpiM
	 X4kTwFcLuA9gg==
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by mm2.emwd.com (Postfix) with ESMTPS id A3D82383B05
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 15:39:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=free.fr header.i=@free.fr header.b="Tkbd1QCu";
	dkim-atps=neutral
Received: from zimbra-e1-03.priv.proxad.net (unknown [172.20.243.151])
	by smtp2-g21.free.fr (Postfix) with ESMTP id 4039D2003D6;
	Sat,  9 Jul 2022 21:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1657395541;
	bh=OanERhwgm08PDqH5nxkt5aJAt5qPR0v0n+FEY/UP1Pw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=Tkbd1QCuKm8hVzrRMboWiw35l54plFjMMh7HYBcuMNzJnR/1Vxpz27+Z/Jiy8ksmU
	 kSVMDvKSw7o3+oGlKWvs3D/zkHuKasotiw8hTg/TOvmIGb6H6r59dFc4+tNMjHAP9c
	 l6RhcY7tI3B9vkwI8GGRSoymFEEwJ+LfcKcnFkYKnhl692V1pec+JazzcT7iHdMygN
	 d2n+r9iBSueiGddJ4eYKzSWsCIrFVBxWfGRS5ZJGzNtumAXNkxdZiUyYlNBQN02a44
	 PY7FQIUTNOXeB1J3kFLiK5is4NyCbc4DYUtHYZvWqCW9hD23Xfs+AC4zHTSxU5Rd3f
	 zhfy+8X8dq9Sw==
Date: Sat, 9 Jul 2022 21:39:01 +0200 (CEST)
From: friedtj@free.fr
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <2097116366.968706430.1657395541226.JavaMail.zimbra@free.fr>
In-Reply-To: <4d1cbfc5-957d-ee5c-4b16-70419ddca6e0@gmail.com>
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com> <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com> <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com> <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com> <CAA=S3PsgydFNOz8wnFxCxRBC+poK-0LYMjqWOrcHUae+3dJmTA@mail.gmail.com> <3ea0b7a3-5b51-b9d0-40a1-c7387dea3b2f@gmail.com> <CAAxXO2HSPkfcAoXnLXUvarLGoAzgPUfr9SWaNP3Vp38gFmPmww@mail.gmail.com> <4d1cbfc5-957d-ee5c-4b16-70419ddca6e0@gmail.com>
MIME-Version: 1.0
X-Originating-IP: [92.184.124.243]
X-Mailer: Zimbra 9.0.0_GA_1337 (ZimbraWebClient - FF102 (Linux)/9.0.0_GA_1337)
Thread-Topic: How use convert class in UHD to convert complex float to complex sint16?
Thread-Index: bJ3I44Glb19SN0SVz78jkRNyZ6rYAA==
Message-ID-Hash: H2IV7UWEZQPBJX7THMRHWFC6NE5J5UBL
X-Message-ID-Hash: H2IV7UWEZQPBJX7THMRHWFC6NE5J5UBL
X-MailFrom: friedtj@free.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nikos Balkanas <nbalkanas@gmail.com>, sp <stackprogramer@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H2IV7UWEZQPBJX7THMRHWFC6NE5J5UBL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAgb24gdGhhdCBkYXRhLsKgwqAgTU9TVCBtYWNoaW5lcyB0aGVzZSBkYXlzIGFyZSBsaXR0bGUt
ZW5kaWFuICh4ODYsIGV0YykuwqDCoCANCg0KZXhjZXB0IGZvciB0aGUgSlZNIGFuZCBhbGwgdGhl
IEFuZHJvaWQgYXBwbGljYXRpb25zIHdoaWNoIGFyZSBiaWctZW5kaWFuIGhlbmNlICEgDQpJIGFt
IG5vdCBzdXJlIHg4Ni1iYXNlZCBQQ3MgYWNjb3VudCBmb3IgIm1vc3QgbWFjaGluZXMiIHRvZGF5
LCBhbHRob3VnaCB0aGV5IGFyZSANCmFyZ3VhYmx5IHRoZSBtb3N0IHN1cHBvcnRlZCBHTlUgUmFk
aW8gcnVubmluZyBlbnZpcm9ubWVudC4NCg0KQmVzdCwgSk0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
