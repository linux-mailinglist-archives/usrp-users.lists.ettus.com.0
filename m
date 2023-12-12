Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 162FD80ECB1
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 13:59:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29B2B385E08
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 07:59:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702385972; bh=VwyGnRotXbV2AN7ptwlSnwQjzOy7DRH1cKjJIhldCaM=;
	h=Date:From:To:Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=b67Kl4dgazEzVBu4sSUrWBMoADCCEHsN+6vsME8fnVDpK2HIi4pXCHdG9PFHQrqZV
	 +5HtWOD84XHxUw446Vxz2me5VNAQ0/qkqI4vn8DU/76zDNP1XNXp0/+rv8jhZbVl0d
	 xphdhCxZEFillg8oz+u6/2jx841Hr5ZEGjFE0P/T0grsWO007bBKh3wil5BuO/skB1
	 Ok3vQVFYDx3R1TqvS7SYytpXD8zGXJjBpuW5eI8PeEdLb0h13SdQDuHb+IWuROh0Kq
	 c9NoepmhanIilOzANmXzQmczFcneYFZvMxw9O5aQifvR/0Z1ylKsu9tb+9NUZ/inVv
	 rrn3Ao0udKu+A==
Received: from omr03.pc4.atmailcloud.com (omr03.pc4.atmailcloud.com [52.215.173.228])
	by mm2.emwd.com (Postfix) with ESMTPS id 55BF03857F3
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 07:59:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=manx.net header.i=@manx.net header.b="Z4Khn0FS";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=manx.net;
	s=20160330; h=To:Subject:Mime-Version:Content-Type:From:Date:Message-Id;
	bh=SvCWYy2mzK5neXwNBYdMxtag1VIdwCfc6Vh7hDNRp+s=; b=Z4Khn0FS7HtNKnxKZ7nLY5CA7+
	ina7hReUA+3smTMwF3LJuFhTxwmEm2eI5wPZbiq9B6jH8EtgfcnOqlNcnTs9Wybam1t1UC0N9fF0n
	08zcZqO0B+z2A4LhesyelfBu0w7Tppin2U/rx2UQSQ3JQOBtyQZQ+e2nZQWIb85i1Bhw=;
Received: from mqr.i-071cd64f1d8392759
	 by OMR.i-0d2eaeb4aa80fbbdd with esmtps
	(envelope-from <drtaylor@manx.net>)
	id 1rD2M3-0001W9-97
	for usrp-users@lists.ettus.com;
	Tue, 12 Dec 2023 12:59:19 +0000
Received: from CMR.i-0f64d2d80affd21e1 by MQR.i-071cd64f1d8392759 with esmtps
	(envelope-from <drtaylor@manx.net>)
	id 1rD2M3-0007kR-0h
	for usrp-users@lists.ettus.com;
	Tue, 12 Dec 2023 12:59:19 +0000
Received: from webmail.pc4.atmailcloud.com by CMR.i-0f64d2d80affd21e1 with esmtpsa
	(envelope-from <drtaylor@manx.net>)
	id 1rD2M2-00036C-DR
	for usrp-users@lists.ettus.com; Tue, 12 Dec 2023 12:59:19 +0000
Message-Id: <ad5a2858-b986-4ea0-a070-b2ccf298b63d@localhost>
Date: Tue, 12 Dec 2023 12:59:18 +0000
From: "drtaylor@manx.net" <drtaylor@manx.net>
Mime-Version: 1.0
To: <usrp-users@lists.ettus.com>
X-Atmail-Id: drtaylor@manx.net
X-atmailcloud-spam-score: 0
X-atmailcloud-spam-bar: /
X-atmailcloud-spam-action: no action
X-Cm-Analysis: v=2.4 cv=X62Uakfe c=1 sm=1 tr=0 ts=65785927 a=aCTo2H5bb2veVnFltvlYLA==:117 a=e2cXIFwxEfEA:10 a=nnbRH6hpVKTdUebeYGMA:9 a=QEXdDO2ut3YA:10 a=n6vHIZXuU0Yyd0_ieYUA:9 a=jnIS-Li-2cdWyyR2:21
X-Cm-Envelope: MS4xfEx2pkhNvDJ8h87MNhL1nrCmOATsQglGApwGO+kUTNZVYmwiTIVB4ONvpIqjKkMuKL/QK1wppy/tr83uVeLiGQN16nHJkGKXtEUIIDXLed7ppXjCA/wF 5UWN+s8eP6bRhWleWkqZnS45TA7OW747e4bSKo4XSMxggbeD4YE+RP26wd3YMqz7G5IiiDcbSPclDQ==
Message-ID-Hash: BORTAIMYE5HHFVMUP5V7HH7WQXTAHZ76
X-Message-ID-Hash: BORTAIMYE5HHFVMUP5V7HH7WQXTAHZ76
X-MailFrom: drtaylor@manx.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Reply-To: "drtaylor@manx.net" <drtaylor@manx.net>
Subject: [USRP-users] USRP Python repeat scheduling with 1 pps synchronisation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BORTAIMYE5HHFVMUP5V7HH7WQXTAHZ76/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5485947756585713518=="

--===============5485947756585713518==
Content-Type: multipart/alternative; boundary=694145059c5939a0943fee84c53527c7d63191a7b1c29ad278fdf935a7d6

--694145059c5939a0943fee84c53527c7d63191a7b1c29ad278fdf935a7d6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi everyone.

I am trying to run a python script that has been generated for convenience =
using the non-GUI GRC option. (3.9.5.0) (Python 3.10.12)

The script sends a short (~300 ms) finite sequence of samples as ranging co=
de to a satellite and records the return to a file after the round-trip int=
erval (~262 ms). This sequence of events is achieved using the head block a=
s a method of accurately counting samples, which will be important in the f=
ile content analysis. The flowgraph cycle is complete in less than 1 second=
, with the data file appended each run.

I am looking for a quick and hopefully elegant way of synchronising the sta=
rt of above flowgraph to the 1 pps input, but on a repetitive basis, say ev=
ery 10 seconds. The published notes on 1pps USRP synchronisation are very i=
nstructive, however applying the necessary scheduler control means to the p=
ython _main_ is causing the difficulty here.

Many thanks and compliments of the season.

David Taylor GD4FMB
--694145059c5939a0943fee84c53527c7d63191a7b1c29ad278fdf935a7d6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<p class=3D"MsoNormal"><div>Hi everyone.<br></div></p><p class=3D"MsoNormal=
"><div>I am trying to run a python script that has been generated for
convenience using the non-GUI GRC option. (3.9.5.0) (Python 3.10.12)<br></d=
iv><div><br></div><div>The script sends a short (~300 ms) finite sequence o=
f
samples as ranging code to a satellite and records the return to a file aft=
er the
round-trip interval (~262 ms). This sequence of events is achieved using th=
e
head block as a method of accurately counting samples, which will be import=
ant
in the file content analysis. The flowgraph cycle is complete in less than =
1
second, with the data file appended each run.<br></div><div><br></div><div>=
I am looking for a quick and hopefully elegant way of synchronising the sta=
rt of above flowgraph to the 1 pps input, but on a repetitive basis, say
every 10 seconds. The published notes on 1pps USRP synchronisation are very=
 instructive,
however applying the necessary scheduler control means to the python _main_=
 is
causing the difficulty here.</div></p><p class=3D"MsoNormal"><div>Many than=
ks and compliments of the season.<br></div></p><p class=3D"MsoNormal"><div>=
David Taylor GD4FMB<br></div></p><div><br></div><div data-atmail-signature=
=3D"" class=3D"gmail_signature" data-smartmail=3D"gmail_signature" style=3D=
""><br></div><div><br></div>
--694145059c5939a0943fee84c53527c7d63191a7b1c29ad278fdf935a7d6--

--===============5485947756585713518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5485947756585713518==--
