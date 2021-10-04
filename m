Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEFD420A78
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 13:56:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7CA00383D04
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 07:56:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=silicom.fr header.i=@silicom.fr header.b="gI8243W4";
	dkim-atps=neutral
Received: from mx01.mocilis.com (mx01.mocilis.com [77.158.202.205])
	by mm2.emwd.com (Postfix) with ESMTPS id E2096383CC6
	for <usrp-users@lists.ettus.com>; Mon,  4 Oct 2021 07:55:44 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mx01.mocilis.com (Postfix) with ESMTP id E894E811FE0A
	for <usrp-users@lists.ettus.com>; Mon,  4 Oct 2021 13:55:43 +0200 (CEST)
Received: from mx01.mocilis.com ([127.0.0.1])
	by localhost (mx01.mocilis.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id 3gLS4mU2fxVJ for <usrp-users@lists.ettus.com>;
	Mon,  4 Oct 2021 13:55:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mx01.mocilis.com (Postfix) with ESMTP id 8BC0D811FE0F
	for <usrp-users@lists.ettus.com>; Mon,  4 Oct 2021 13:55:43 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mx01.mocilis.com 8BC0D811FE0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=silicom.fr; s=mail;
	t=1633348543; bh=hJ46R4vv2BtrXWGjub5rJmwQtuq86PGDoz9IuV6gqJU=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=gI8243W4Nto99ydTY6uDy9Egx1zDRcTUSlmogJaHgPS45d1MEikMki3ncbBNH69w8
	 YZ12hUkSx26b4pgjq0jivzIT8i0J/W4fzuxSGeBSUYY/tPhJhfL2bL24JEXEUarDJo
	 vK42GyVgRDAqgJTkI0sengFxlFTZOOJxDSzU7W8s=
X-Virus-Scanned: amavisd-new at mx01.mocilis.com
Received: from mx01.mocilis.com ([127.0.0.1])
	by localhost (mx01.mocilis.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 0xPzUUd0vE7c for <usrp-users@lists.ettus.com>;
	Mon,  4 Oct 2021 13:55:43 +0200 (CEST)
Received: from mbox-01.mail.mocilis.lan (mbox-01.mail.mocilis.lan [172.20.100.3])
	by mx01.mocilis.com (Postfix) with ESMTP id 706E3811FE0A
	for <usrp-users@lists.ettus.com>; Mon,  4 Oct 2021 13:55:43 +0200 (CEST)
Date: Mon, 4 Oct 2021 13:55:43 +0200 (CEST)
To: usrp-users@lists.ettus.com
Message-ID: <192378432.2407482.1633348543315.JavaMail.zimbra@silicom.fr>
MIME-Version: 1.0
X-Originating-IP: [172.20.1.12]
X-Mailer: Zimbra 9.0.0_GA_4126 (ZimbraWebClient - GC94 (Linux)/9.0.0_GA_4126)
X-Authenticated-User: ncaseau@silicom.fr
Thread-Index: 2IpqixH9gNvf4enXXMsNp2mcVyGxVA==
Thread-Topic: Setting up a connection between an USRP N310 and an FPGA
Message-ID-Hash: GBOYMNMSOUWQBLA7CES6CU67JV5GPSQK
X-Message-ID-Hash: GBOYMNMSOUWQBLA7CES6CU67JV5GPSQK
X-MailFrom: ncaseau@silicom.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Setting up a connection between an USRP N310 and an FPGA
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GBOYMNMSOUWQBLA7CES6CU67JV5GPSQK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Nicolas CASEAU via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nicolas CASEAU <ncaseau@silicom.fr>
Content-Type: multipart/mixed; boundary="===============0173421345265876632=="

--===============0173421345265876632==
Content-Type: multipart/alternative;
	boundary="=_b2312710-f7d8-4fce-9d5c-e43a1fdcdbbd"

--=_b2312710-f7d8-4fce-9d5c-e43a1fdcdbbd
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi, 

I'm trying to set up a connection between a USRP N310 and an FPGA through an aurora interface. I would like to generate data with the USRP and send it directly to the FPGA through one of the SPF ports to see if the FPGA can recover it. 

Are there any tests already available that can implement what I'm trying to do or should I write one myself ? 

Thank you for your answer and have a good day. 

Nicolas 

--=_b2312710-f7d8-4fce-9d5c-e43a1fdcdbbd
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><body><div style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000"><div>Hi,</div><div><br data-mce-bogus="1"></div><div>I'm trying to set up a connection between a USRP N310 and an FPGA through an aurora interface. I would like to generate data with the USRP and send it directly to the FPGA through one of the SPF ports to see if the FPGA can recover it.&nbsp;</div><div><br data-mce-bogus="1"></div><div>Are there any tests already available that can implement what I'm trying to do or should I write one myself ?&nbsp;</div><div><br data-mce-bogus="1"></div><div>Thank you for your answer and have a good day.&nbsp;</div><div><br data-mce-bogus="1"></div><div>Nicolas&nbsp;</div></div></body></html>
--=_b2312710-f7d8-4fce-9d5c-e43a1fdcdbbd--

--===============0173421345265876632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0173421345265876632==--
