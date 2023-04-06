Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4516D9842
	for <lists+usrp-users@lfdr.de>; Thu,  6 Apr 2023 15:31:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BD5E3810FC
	for <lists+usrp-users@lfdr.de>; Thu,  6 Apr 2023 09:31:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680787864; bh=x4Q38zKmyNuKFTjhjfDnuwso9WG9xXC8FMGZMxuTTNU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bbyM+yG8+4ouslGEo0Sl6MWibKAh2SKnTrpCMk+yPq2nLHFJlCOHspu7QMVpBBDQA
	 ChMi6vXZZ69+XzUXL/2w1n0avBHaKKN9Lm7DgveyJL0moss1VjNYtyucVCRjvLYOJ6
	 R6gcamV6LHSAIGM/p0b2gLwZRR6mV1SU884KFKNHY4VqAGn8KO93eex/Qhk94bh7aB
	 8QSvXEE3y5UUdLuEq6nVuwqXIXte2POZ2M/7bjM90J3qC6WTha3I5ujR9V+KI0dcTx
	 +C8dQbbvgRNp5IL0hvb1iHV+AP24JiCu/51KjBFTIYMnAQ6CV1aazu4nE4jiVR0PGK
	 JV/UaA3wgYExQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A4EB3848F3
	for <usrp-users@lists.ettus.com>; Thu,  6 Apr 2023 09:29:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680787750; bh=KfI0h22M4MvzjG0EGMnEfP/Vlu5wLkh/W8l2GZseFUo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=chStG56EnFCgJKTpKiFUPxNsxH1XuAfnaCY9wiTohAn6vrzKLEVj4D9KDy3fgKTz5
	 XtmqQHHIx0RbULm3bpz6tJjZ2ymWR7ZJcxUf1M2RD39uxPuadE+nZhxfY1GZsPexT3
	 CBJ9JE6QFYUKnKIwrRqMQMA0Gru0Fpqoil9AHMgXbr2PtIa3UtIvRnMR1/h5N38pNl
	 TquoL9RtzMKYIIoW5oO2umCtw/7bEu5TphnaIl5oMIqJ0/hi/d0LL0kwXZxchbpnOE
	 vznRvngjMoJQZql1/3HkcHCDa+tmJ6nfAHdesqJGcwCPEVU7Z38FapjNhpg7mq+Ph4
	 8+CC4ahR045oA==
Date: Thu, 6 Apr 2023 13:29:10 +0000
To: usrp-users@lists.ettus.com
From: shikunhong12138@outlook.com
Message-ID: <Iqxbu2c3xd2XaEHZKspuljQUn4FxSVHBipS6dm8X30@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=i38wHH6a046yAZQz=iG+fMNqiCq4HC8ndOU5h6yMAauQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: NDNESK22CDJHFVWLQWFBOINAUNI2DLEI
X-Message-ID-Hash: NDNESK22CDJHFVWLQWFBOINAUNI2DLEI
X-MailFrom: shikunhong12138@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 x4_200 connectivity question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NDNESK22CDJHFVWLQWFBOINAUNI2DLEI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1522341426416670807=="

This is a multi-part message in MIME format.

--===============1522341426416670807==
Content-Type: multipart/alternative;
 boundary="b1_Iqxbu2c3xd2XaEHZKspuljQUn4FxSVHBipS6dm8X30"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Iqxbu2c3xd2XaEHZKspuljQUn4FxSVHBipS6dm8X30
Content-Type: text/plain; charset=us-ascii

For question 2, can I understand it like this: if I use mellanox mcx516ccat board, mirror select x4 200 for firmware, parameters addr, second_addr, third_addr and

The fourth_addr is set to 192.168.10.2, so that when uhd is running, the data stream will be automatically allocated, up to 40 GbE?

--b1_Iqxbu2c3xd2XaEHZKspuljQUn4FxSVHBipS6dm8X30
Content-Type: text/html; charset=us-ascii

<p>For question 2, can I understand it like this: if I use mellanox mcx516ccat board, mirror select x4 200 for firmware, parameters addr, second_addr, third_addr and</p><p>The fourth_addr is set to 192.168.10.2, so that when uhd is running, the data stream will be automatically allocated, up to 40 GbE?</p>


--b1_Iqxbu2c3xd2XaEHZKspuljQUn4FxSVHBipS6dm8X30--

--===============1522341426416670807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1522341426416670807==--
