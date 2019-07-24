Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCC174031
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2019 22:39:20 +0200 (CEST)
Received: from [::1] (port=50694 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqO2f-0004pD-Gf; Wed, 24 Jul 2019 16:39:17 -0400
Received: from sonic301-32.consmr.mail.ne1.yahoo.com ([66.163.184.201]:39645)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <royceconnerley@yahoo.com>)
 id 1hqO1p-0004dt-4U
 for usrp-users@lists.ettus.com; Wed, 24 Jul 2019 16:38:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1564000664; bh=Mc5pezajFkBGcKfyoo3fIj/cyndnN8Wf5qNcz6Q/nHI=;
 h=From:Subject:Date:To:From:Subject;
 b=bSAfxEQTScJQFUu8FYlFh49q4xFcJE1Z0dI9rFHi5Nd617ZPN/8YWhoSbgSwK/1zXdDeVV7oMB4jv4xMkeMb1XtZ8rn/yGD+AXw6r09YescaV035O6peXqnZxLadDVcQcsr4EHfc6M/3ccuUR06oUbCiT0twYG4BMmg6cRKdnirnWKEqV/c8B9OUP3ZDvWdhyu3WlNDUx2XbYjaoWtPLtrCEvGr72cyY7H25UVgSKFUljTkzCwvBYFHfyZ/Nxm0e/U6VoTCJIUc+gTBmiy6b07oIQgJ4EGcqIcCxHoN5o0DKI7tcGymBoNzMbe15ErVJAWXZ/ICosZ6rz8XAVjjnXw==
X-YMail-OSG: XyviZ8cVM1lab4tzo1lPvSk_NiWAUIEWqJcNztLFXEnN8XAcFpnq6ty3rmWKnEz
 SiG63hxWqVge4eYqGP5yqcR6Y0jOgitJYqFtmCgjqdtoJFM3ByjrxD8.LP1Csze6G_TjdLlT4nw1
 Tei62SRVL9rvucoXqccoJ8iR_Twq3LEfeKaL5EgVVTjylNMGVdVmZHpvYWFbQn2WrUgi4W3bmyPY
 Ov4kIn0EYwAQ3JXitWBUJ9LVLikk82B14eBSU9YxguMM01qs6MX6xYuoRsQS71_X5IUM8cPSc_KF
 iRhFOcwBaf1EdhQyUD68kgh5o2wbPSQrovDlcJAJMK0WP0EnLw3PpRql0ODAZZWobTE8R6bcbjnp
 8_Q1nIhgcHTtIB8A60CvNypa6TFZAfFiXVQ_YNYirS9TNekSAmaqqvUoaHW5_M6fAizcwCjXKbqU
 RjpFErXfKU6ihW1_1rRjeBFPzSGM8qsm.6EKULDaX2BmcRrFL4A0UbWJxrYw_wZJ6c60IxLv4Xc9
 4VJqbtpJxWlBic0_zwYg7YrTagIaU3DEbUHKDB4xSxPP9Rq4_JpQKMLEVEu1rDnVzuVayzIyiMP8
 ylDMpSe4gcqc7y8oePpfX767xhum_jGSrLrFrXbqASYpu3t.jXxWQ5U4LIWGajvhnyANipXTZuon
 W.y_y7ZbksXByCHdiKepb9f1dBxGFAMbZSD7JGj0a7hDX1fHsJhNcnKJdBmd9B964W1mkSoChUhf
 mQY5M0S.IX1SN6a7Rg03FIVshVEuNPAnquXn_PUR5W67sbTRAlF34RHaIq9IPmnedyIZ2qYDlVt7
 uXKWKYcPNvP74dArRW6HV2TDJCnAANeb7ggQxM4ADHADMofEy0D5mwNl6Se8pm6cdpm0dln5ywf2
 qxo4CnzZxovYJSDnAFwIl4UG6.yzeY9TkRDKkGleq836RWVZfc0pBjAsJss8ILJfUS6QguaPfhSi
 WoAEuY8mvyGb9vNJTHSvWpZFxJ7HEpjUsaB3EpUAIJZmqASaJIyoJElT8nYkUW_fUgpa6.AxjC_i
 _hyvLqdX4izxi69Qq2zs3NnUg4FD0ZpLqrhvnA31MHjyHZXKz81Ik7vf20VL1GNZ44g9PkBVXAmo
 6A8is9N8aMevJLfW1tBAey.sYLYHnHhdotoq7cTAMLxIqAMG4.G5dneunzr3FDzeFWPfBiwo94gZ
 s.8_.2L_VQEWppu6cbzeoUL7OETLZ
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.ne1.yahoo.com with HTTP; Wed, 24 Jul 2019 20:37:44 +0000
Received: by smtp415.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 71cc2c5715ac4e902d46fec785d9a448; 
 Wed, 24 Jul 2019 20:37:43 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <97D6F3B6-019A-41A3-A8D6-06D32C15B528@yahoo.com>
Date: Wed, 24 Jul 2019 15:37:40 -0500
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3445.104.11)
X-Mailman-Approved-At: Wed, 24 Jul 2019 16:39:13 -0400
Subject: [USRP-users] RFNoC Polyphase Channelizer updates
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Royce Connerley via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Royce Connerley <royceconnerley@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC polyphase channelizer.  Has there been any activity on this?

Royce Connerley
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
