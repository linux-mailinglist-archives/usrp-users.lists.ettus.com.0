Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AEBA3E111
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 17:42:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 24F0938607C
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 11:42:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740069733; bh=uYpEnWXU3plXdG4UIaH+okzi8d/mtCYbhUldxOS9DiE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=A/toASRgs+oaTVcQ93Xbcal8EoEVcuo/p6pqVRqQMINn+ULRSnnYMOutGLWhDr0y6
	 XXjpbMz9R67ZOP7oUFXS6diJ30J6DjN17EN/PU27UWm+/GKRNmLw0mxzUZZiWJvIIo
	 TQh2R6/YCJQHqoAVc7b1pyMB61hZ8S100ceD81mi5Q6Z5a8v0Mz6vQoBmOozOHIgQx
	 Lkk0tlqXCuq52pS2aw2JiOKNLPLPM6O2oHzGHvSQ9AzdiEiUghTg9HkMVYnzrcJybI
	 uPH4DkRgmVpiAeD4F7Da4riI5f3vH0H/apZ7nN8WHQcAcWevExdXwFWWrCgVbs/mtO
	 A4wIjetBhCH+w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE6493853F7
	for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 11:41:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740069683; bh=/EXzKiszqcbrfLFd9APtQe0eb/xhuee/zLClFdybB3I=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=TqtRHvXLcrIMkJQY0tjZDYjP8vPoyVeSHbKXeTcxKJmMxXqe/dK5i4IJLfbnUREmX
	 8mN7/i5Br5+mkAmZIOuc5KB0o6Q8kEhxJBIGPhXShZe+79QXFmc88eesr3bwbmzO18
	 /rBWmEMEVXXWuwSvXWyLbz9U4lZ7I29d7cqcmgCDcpixXcglbzlEuJdgyy0HaRAhQy
	 1lOYlXTXa8Ags5GfWW2O7ZuJBVaUkt1alUIq8+lustpDFRqiE75iB42ZOHUVPMg5r9
	 fB3Tv6aCxkvj6TByQo52zxwg9MYw/Q1jP0NcAZPnAwWj0R4BuroDatCDjyG0GUkgaP
	 FZ69cPDhcqeyg==
Date: Thu, 20 Feb 2025 16:41:23 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <D3YEaOFisLcjvI3tRnvEpEeeisKwnTfTFlNvyBiZnpo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3aPQbD9WfrahaBFRTVZe4DA1Za6bVMLpCWWvkTDccNM@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: JH2J5EDQV6T6QHUFBLIKQU3HBY7QMWNZ
X-Message-ID-Hash: JH2J5EDQV6T6QHUFBLIKQU3HBY7QMWNZ
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JH2J5EDQV6T6QHUFBLIKQU3HBY7QMWNZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8313754554220259859=="

This is a multi-part message in MIME format.

--===============8313754554220259859==
Content-Type: multipart/alternative;
 boundary="b1_D3YEaOFisLcjvI3tRnvEpEeeisKwnTfTFlNvyBiZnpo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_D3YEaOFisLcjvI3tRnvEpEeeisKwnTfTFlNvyBiZnpo
Content-Type: text/plain; charset=us-ascii

Hi Martin, 

If it is stuck here should it not timeout (either massive @10s the default @ 1s) ? 

thanks

Marino

--b1_D3YEaOFisLcjvI3tRnvEpEeeisKwnTfTFlNvyBiZnpo
Content-Type: text/html; charset=us-ascii

<p>Hi Martin, </p><p>If it is stuck here should it not timeout (either massive @10s the default @ 1s) ? </p><p>thanks</p><p>Marino</p><p><br></p>


--b1_D3YEaOFisLcjvI3tRnvEpEeeisKwnTfTFlNvyBiZnpo--

--===============8313754554220259859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8313754554220259859==--
