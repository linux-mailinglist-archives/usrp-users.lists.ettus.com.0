Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 848255AE123
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 09:32:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 081CE381440
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 03:32:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662449557; bh=oHTd2dJRiB8luRZyYn4F6NOORUajO90OrXurXXhh7mw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=TY0GtTNRJbd+7u/LNURpcxZYwUZbBv0+w92qpuV2peDK2unK7VxxPy6kjjJ5xpeur
	 zg5B8hgLqHd9kurFDVNR64mVu/OBYmpFVrtEuMXtdEjRanqlV1rzIbueDgYU4j/b8q
	 Ze+STebZYG2LELdzupI/HSE3+eKTZWe3rzq5zuK0uAO07pLrcvt28eFWcKjpT0u854
	 YdnrGsAhVYf4quqS5R1qdjudGGPG65pAAF/GBAxDv12dmQ1Fpp4RiEW8Wj4a9s5S7u
	 WyvHq6/wU1GFJvdWlXtzILTS7047NkYK3tmwQpl8lMwuC97uOyVQm3pm0drOdtbknO
	 R3TZiHVy5DhtA==
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C6C0383689
	for <USRP-users@lists.ettus.com>; Tue,  6 Sep 2022 03:30:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="fQjYpTvy";
	dkim-atps=neutral
Received: (wp-smtpd smtp.tlen.pl 24351 invoked from network); 6 Sep 2022 09:30:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
          t=1662449441; bh=lSElEM82Ti/bxITSwqN9I2Sbr8giSQcbs3HuJ0YhJ24=;
          h=To:From:Subject;
          b=fQjYpTvyjvdiA/o7Kkmzlf92lrq7IjKocsg2NdVC22obYrl8fRmBYOgGIrxnv/F8H
           oDafCf+lJ8YCOWLvsqMWmSkws9WZVPFBd0K53sJPI9JQFeGwiwGEA3fsPZeLtZvBfJ
           7xRGANqRlPvN+ak4sifaQPctPSyWjvpkGvmquCDI=
Received: from user-5-173-156-204.play-internet.pl (HELO [192.168.2.104]) (perper@o2.pl@[5.173.156.204])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <USRP-users@lists.ettus.com>; 6 Sep 2022 09:30:41 +0200
Message-ID: <df5427c7-7856-9bcd-6228-79d385413434@o2.pl>
Date: Tue, 6 Sep 2022 09:30:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: USRP List <USRP-users@lists.ettus.com>
From: Piotr Krysik <perper@o2.pl>
X-WP-MailID: c2a0e9d69f191cc8ca89fddef90e5e2d
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [kQJ3]                               
Message-ID-Hash: 72RIPE37XC4ZKLIBGXYC44OPVITZAW2W
X-Message-ID-Hash: 72RIPE37XC4ZKLIBGXYC44OPVITZAW2W
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Question: maximum single channel sample rate on X410 with DPDK
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/72RIPE37XC4ZKLIBGXYC44OPVITZAW2W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hello all,

Has anybody tried to use DPDK with USRP X410?

If yes - can you share what was maximal sample rate for a single channel 
that you were able to stream over 10G or 100G Ethernet connection 
without loss and what was your setup (hardware and software)?

--
Best Regards,
Piotr Krysik
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
