Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE1BA7A08B
	for <lists+usrp-users@lfdr.de>; Thu,  3 Apr 2025 11:58:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96014385E03
	for <lists+usrp-users@lfdr.de>; Thu,  3 Apr 2025 05:58:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743674318; bh=g2j6ti4G96D9GYAWFwX9tR2LpVwBRjr2H9QLgAY9jKM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ff/PklPRXtiQMc4Gqp5PYU8NH4mU7fO4ZUanb+lkUEkr4BeNNpB9/zWXkSlMRqUrb
	 EZOtB+2BiyKZe1F1SHy88m72hdbznu59c8UaUXHpvIZLcQ1xUZFb1eg8emJGV1JMSs
	 vOJOXiV6BuoZH3y879+RTR6X6lHnwQcjTRZbd999d3gHi68NmRn6E4QGPVBbxwGxCe
	 0G7Ye8auZl0eUXEEEMO81cvEfdz7RyTgP3jKFf6Ip5V3nnEmQ/eWebK6ZS33qHEHrC
	 3yRbjkwjlvoEUDfsw7IIKkBR7TmKB5wOgu3bvZmI9H29XungmhitbflVfum4IRtYcO
	 PlgcCj07VxHKA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 61F33385C9B
	for <usrp-users@lists.ettus.com>; Thu,  3 Apr 2025 05:57:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743674270; bh=mLX79MFC6axDKYn94Ptu0nN+Zlu8MumFb32ARNxcs+U=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=eiNUZxZoV9mRVmh2iWTaPqQq5buDWjvV5GCGIr/hwdFZHpTy3LHXlNxM6qDRwe+yZ
	 AAgCqr2M+OdGHdFMZ4NCD1wayF5Cvpzk6vJUgyANmUO9HMuxFrLmv6RVM8bFdtWUgq
	 M4ZIIjHTBbGErmDK6CM7D2+EKyTaI7PgTL71OCnxinvzXNjaf0I53/qZXkQcUO/wl2
	 KTrQG7TNfXbHwoPl7dl+1dbAhTHZUXTx2CqeEoTDmErGacnhaD5yn/E1ZlTaie6Kef
	 MLChkmbTugUrOGi+NeBe9dL8ZBmTcNhTMXEKzivtdorbB0+6+F5KvsbznfkNWMjao6
	 TVE0NB1BSe3yg==
Date: Thu, 3 Apr 2025 09:57:50 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <Q1vPNotb0OsPKVY2BQpEh9uUbUdw6CjzbIrBVoJY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A60ycL4eRXeYoMauWFiVLCjvBbLzqhb3AZHa_tbSpaVag@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: EIQE4NVGL5HAGMAJFNCSCLTIJRDRIH6E
X-Message-ID-Hash: EIQE4NVGL5HAGMAJFNCSCLTIJRDRIH6E
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EIQE4NVGL5HAGMAJFNCSCLTIJRDRIH6E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8652467797927350964=="

This is a multi-part message in MIME format.

--===============8652467797927350964==
Content-Type: multipart/alternative;
 boundary="b1_Q1vPNotb0OsPKVY2BQpEh9uUbUdw6CjzbIrBVoJY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Q1vPNotb0OsPKVY2BQpEh9uUbUdw6CjzbIrBVoJY
Content-Type: text/plain; charset=us-ascii

Thank you Martin, that issue looks interesting and useful. I will certainly try the modification out and keep you posted.

all the best 

Marino

--b1_Q1vPNotb0OsPKVY2BQpEh9uUbUdw6CjzbIrBVoJY
Content-Type: text/html; charset=us-ascii

<p>Thank you Martin, that issue looks interesting and useful. I will certainly try the modification out and keep you posted.</p><p>all the best </p><p>Marino</p>


--b1_Q1vPNotb0OsPKVY2BQpEh9uUbUdw6CjzbIrBVoJY--

--===============8652467797927350964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8652467797927350964==--
