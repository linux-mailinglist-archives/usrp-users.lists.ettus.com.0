Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA723A9B9D
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 15:07:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51632384469
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 09:07:44 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42D07383EFD
	for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 09:06:51 -0400 (EDT)
Date: Wed, 16 Jun 2021 13:06:51 +0000
To: usrp-users@lists.ettus.com
From: mamuki92@gmail.com
Message-ID: <g8Ny3PQi4wCJKRc9WNNZc4nukZyzAQCDi4GAPHaliA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: F89F05CF-A154-411D-9716-767FE5B3114A@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 45RV7YGGHD7GFJINMIKSMNKPHZMNDIXT
X-Message-ID-Hash: 45RV7YGGHD7GFJINMIKSMNKPHZMNDIXT
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Software Loopback RFNoC TX/RX same flowgraph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/45RV7YGGHD7GFJINMIKSMNKPHZMNDIXT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8279304845041752748=="

This is a multi-part message in MIME format.

--===============8279304845041752748==
Content-Type: multipart/alternative;
 boundary="b1_g8Ny3PQi4wCJKRc9WNNZc4nukZyzAQCDi4GAPHaliA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_g8Ny3PQi4wCJKRc9WNNZc4nukZyzAQCDi4GAPHaliA
Content-Type: text/plain; charset=us-ascii

Hi Robert,

Yes, I have fixed it and now the grc loopback in the example works. It was a compilation issue with the swig interface not getting updated in my gr-ettus. I have to do "make ettus_swig" and install it again and then it works.

I only have a problem if I try to have 2 chains one with only rfnoc blocks (loopback) and another with host blocks both chains separated by a splitter stream block. In that case, it gives me RuntimeError: _Map_base::at 

Kind Regards,

Maria

--b1_g8Ny3PQi4wCJKRc9WNNZc4nukZyzAQCDi4GAPHaliA
Content-Type: text/html; charset=us-ascii

<p>Hi Robert,</p><p>Yes, I have fixed it and now the grc loopback in the example works. It was a compilation issue with the swig interface not getting updated in my gr-ettus. I have to do "make ettus_swig" and install it again and then it works.</p><p>I only have a problem if I try to have 2 chains one with only rfnoc blocks (loopback) and another with host blocks both chains separated by a splitter stream block. In that case, it gives me RuntimeError: _Map_base::at </p><p>Kind Regards,</p><p>Maria</p>


--b1_g8Ny3PQi4wCJKRc9WNNZc4nukZyzAQCDi4GAPHaliA--

--===============8279304845041752748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8279304845041752748==--
