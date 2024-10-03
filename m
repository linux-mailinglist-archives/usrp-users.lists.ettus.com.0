Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B4C98E87B
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 04:38:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 50C75385A6F
	for <lists+usrp-users@lfdr.de>; Wed,  2 Oct 2024 22:38:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727923110; bh=4e5DCtD108svjK0m3pkSaqcXAm6YMmA/Xy3ORK/Rqik=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=YLRfXKEaxICs9Y4aJVz3Fz4s7Kv9uUbivPDmnz/63t+NDGwgElrn/C3iwUk8WJYQQ
	 rdP3eLUEoBdMU3t+BDGoBcyXaJCrIiqMmkdLJ6/YIJPz0tBQIkdfhYiRSk0b2y9tIw
	 e4NvYVDmVs+T6yBurUgFF/MCdFXKI/nnJ1I/yFiDZXnq5kn9Zz7Aw12V+iCT4orlp6
	 LBKrpwyGodjWfIASXJgkKqCbBG495AFb7lFgQStX16L2iFdLEcvP7uwpHPgOaS5ciT
	 pXvm4NCkDw16OQ6cTzzIRRgX7R01CZteikWaGH/G42Y42lZEkB8vZDsaEOLZgB8HWR
	 llxRJufv80npA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 466FC385A3A
	for <usrp-users@lists.ettus.com>; Wed,  2 Oct 2024 22:38:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727923106; bh=0v4DgSZW7P8XVo2PzlL/IKPEll1vg6XinKzqDwNNsgc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=t3ncNak7PNwfR4WQPZxp24M3F0J6OOlA3C8tOvCmSpw2AVAPppuAZ4O6C0m4RJstO
	 kBvikU+RmR5fj5sZoQ6v2w9QZ4bahttyfd0CDzfcHDNa1nadw2jxTjrZ51V/VWiobY
	 rK7whVDOEIW82xNaq1s95VmpG6kyYu0+suzXZs4omQFtGfHrWh34efk7AH3Ej53uPk
	 33WrDN14Txi4aGeWSSzxXk/+Qa2hO/7DZvk9Xc3dVRB9F8Ii1Gn2+zPWOyrUzrjNG6
	 L5XyxOAUuWk/CTApJEilE2idcZu1kUBPgCc61Ym7AcQ6vC0Jj6EQ5siXN2AZt5ZneR
	 UWVvXkT8tmJ8Q==
Date: Thu, 3 Oct 2024 02:38:26 +0000
To: usrp-users@lists.ettus.com
Message-ID: <mMdl8FNOeHSVwtCC7lepHeBqZFqoqHQSEWAa9IfXvY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: f2cfcd17-eaa6-46c0-9243-e56c848d3a4c@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4NPDFOK55UIRPM7ZTMQMMGGMNDZW2G34
X-Message-ID-Hash: 4NPDFOK55UIRPM7ZTMQMMGGMNDZW2G34
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4NPDFOK55UIRPM7ZTMQMMGGMNDZW2G34/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============3078242812377453288=="

This is a multi-part message in MIME format.

--===============3078242812377453288==
Content-Type: multipart/alternative;
 boundary="b1_mMdl8FNOeHSVwtCC7lepHeBqZFqoqHQSEWAa9IfXvY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_mMdl8FNOeHSVwtCC7lepHeBqZFqoqHQSEWAa9IfXvY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Well put.   The abstraction really is at the heart of it, isn=E2=80=99t i=
t?   Perhaps that=E2=80=99s why Make was adopted by the hardware world mo=
re slowly.   Over the last decade or two, FPGAs have gotten so large, and=
 the external connectivity options so numerous (1GE, 10GE, 40G, 100G), th=
at hardware designs routinely have multiple flavors, differentiated only =
by the source code included in each.   Hahaha   Make was inevitable at th=
at point.   I have to admit, the x4xx UHD build system is a pretty good e=
xample of how to combine Make and Tcl for FPGA design.

But the crusty old hardware guy in me is still hopeful that schematic ent=
ry of FPGA designs will come back! :-)

--b1_mMdl8FNOeHSVwtCC7lepHeBqZFqoqHQSEWAa9IfXvY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Well put.   The abstraction really is at the heart of it, isn=E2=80=99=
t it?   Perhaps that=E2=80=99s why Make was adopted by the hardware world=
 more slowly.   Over the last decade or two, FPGAs have gotten so large, =
and the external connectivity options so numerous (1GE, 10GE, 40G, 100G),=
 that hardware designs routinely have multiple flavors, differentiated on=
ly by the source code included in each.   Hahaha   Make was inevitable at=
 that point.   I have to admit, the x4xx UHD build system is a pretty goo=
d example of how to combine Make and Tcl for FPGA design.</p><p>But the c=
rusty old hardware guy in me is still hopeful that schematic entry of FPG=
A designs will come back! :-)</p>


--b1_mMdl8FNOeHSVwtCC7lepHeBqZFqoqHQSEWAa9IfXvY--

--===============3078242812377453288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3078242812377453288==--
