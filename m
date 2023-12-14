Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A25812B8B
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 10:23:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 454D9384C42
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 04:23:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702545806; bh=luWactMlMv87K+ofpY7W4y/FhWceIYxTyyrpjfPcwjQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=sdvMrUXcAZpqsOfqCvURjgTW7eOz/hnKdG4qzKwtwdu0jQbOICiu7UjhL1lcNuH78
	 lND6JS4VJQAdoaqWO2AXTjJMox4B5vvokYLoCC9rV/Mn+hJtE96+jlcyqwYqWWyrxW
	 YItU1CWVIW8iKI93dHLSRF4/9lNb6mT4EQEyz2c0ypxZ0IHnaAE1e5l5FgOQkxRugn
	 JuNRz/hgl74uHR40zs0UuT0MD6uxNgdk+3UJQxMLQVpkA1GMjBP1An5/bLIsNvl/tx
	 5PHoFPCqIUeA29WW2vfrKtB3/P2eQQTarELANOBrxtREMVI3dJBnhr/03Zgwhn/TSV
	 FFspCOiSK4q6w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CFC3D384C0C
	for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 04:23:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702545794; bh=KfQSnkMSf5rvVvboSLqGgeQ2DXq5VKTh0l0BIunJFWg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=LtlwWNmTagVDQ1m3Xfkur0IINsHgGD0gJCZlwxODtl/zIeCVcxd1evBnlcFWr2UIt
	 CPa/KWsY9cu7rr9p0EekZJJKhd8FFau8h9+Sx2sW8EJEy2bM9NRf5JDxsGtu+ojEUc
	 4ye7wCbb+l7GEagZ08us7HT6W9CwgrwIqTpB9Xi+b9TbKXcUd+rQGJrmWUgIO9KRXk
	 z3wgmR9OWKYsT5zRMda3ur9e3zTtR2yl+bZgC3h+j08agCtA6N3ujotiI0PoGbIOzK
	 9WEZstipHt1joJ8tAZ3FXbQVWluc3lo1tYsHMjy3nmwQbTKKt1nohL9cM6j6/Yf3WE
	 iZIbhJL5Gn8MQ==
Date: Thu, 14 Dec 2023 09:23:14 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <lWwGh1wRZcTzkpQVZuaambAXFHdgbdSIEOLfUDbIAI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: VQOAKsNb1xUQuszGP28AOipzigdjHnRwtzQxZ58VxdA@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: KNEYKISN6TDPPIY7IBPCMPOVUUWQFHKQ
X-Message-ID-Hash: KNEYKISN6TDPPIY7IBPCMPOVUUWQFHKQ
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KNEYKISN6TDPPIY7IBPCMPOVUUWQFHKQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6675860106621011519=="

This is a multi-part message in MIME format.

--===============6675860106621011519==
Content-Type: multipart/alternative;
 boundary="b1_lWwGh1wRZcTzkpQVZuaambAXFHdgbdSIEOLfUDbIAI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_lWwGh1wRZcTzkpQVZuaambAXFHdgbdSIEOLfUDbIAI
Content-Type: text/plain; charset=us-ascii

Dear Users,

I successfully detect my device and device does not show any error. Many many thanks to all. Thank you.

--b1_lWwGh1wRZcTzkpQVZuaambAXFHdgbdSIEOLfUDbIAI
Content-Type: text/html; charset=us-ascii

<p>Dear Users,</p><p>I successfully detect my device and device does not show any error. Many many thanks to all. Thank you.</p>


--b1_lWwGh1wRZcTzkpQVZuaambAXFHdgbdSIEOLfUDbIAI--

--===============6675860106621011519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6675860106621011519==--
