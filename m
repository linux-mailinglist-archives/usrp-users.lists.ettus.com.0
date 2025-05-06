Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D1AAACA12
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 17:51:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 438913864FF
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 11:51:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746546706; bh=3KntgA7d7CrJN7AgXbinfve/w9mls0gaXnRxoNb1ReE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rOKqLS5hi3wbFD2+giY38vwcWUkdq1FmEZnI+cAKVPlBJqdcjSKSvNEr1ECBh27HG
	 72nwLzRvX68V51LUgPTFtoM6waOrDrn0zJMpszzWzkydClPFCyPOTY26ESqNUsF0G7
	 6dTWN/mL2DRB3RTdmdd9z1O6G7wWYl47XCeOhEQpq5brYrbk8NA8T6CzExECk7IfMV
	 3mfGn6GS9rLbwpJDT7FvxmBoabEtgSYofMUSiNe64TZb4/R5Z5BtV81j9WWNDyFurk
	 ut4E8+HV6fYQyNxGclcS5CPkG8CrSNUD5hc7XSXcFUexogdtFaKn6WGuAvnmmiZ0V2
	 mhLyEJRDxd8iw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AFFF93863AF
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 11:51:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746546697; bh=bVdnbqIMLP8yu9atluFldWNvs46YvNBz9O0MfYPYKjk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=l5Z8qNqKdxRqG1Gw2DgpD4g/d49x7wGv+QEUdPQazGy5WPgrYJDOEXOK/g3CPu8dE
	 6NtwFAJdZNc2Lz6pqLygRwB+llaeRppdayWGoNYfnPQYuCNusEvSR6xHIGHEOvFftD
	 z70UVLK+X/oUrbTaIxFMescVMQwfP+KVxFZfqwXiMwLWxCZ7LscMJ0UZziQGYf52rA
	 qmobUz1C7WmbynSKQ4ynCDIJ9fr4wH/ewmC5RG6uO4mt7ympwdvVfzicEfqTvB7C6a
	 Q/tFYBnI1X+54/0QVL/JFrZxfGKtdexwdhHbqialxjZDRql2uPg7tz1QmVRySCVBhp
	 WkU1Eggwn9DKg==
Date: Tue, 6 May 2025 15:51:37 +0000
To: usrp-users@lists.ettus.com
From: kurz.reido@gmail.com
Message-ID: <jpGFIhpA3v5wnGGXwLTItYCYUu1uPweFlpxNVoPJTVE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A7T1e+v_QkUYehDKTGon72HK6gf3zKs775APdG+LorFVA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: AH5S5AMEXTNCALIP3QXLYFNZVHEYIYZD
X-Message-ID-Hash: AH5S5AMEXTNCALIP3QXLYFNZVHEYIYZD
X-MailFrom: kurz.reido@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Missing RFNoC: DMA FIFO Block in GNU Radio 3.10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AH5S5AMEXTNCALIP3QXLYFNZVHEYIYZD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2062224411407391623=="

This is a multi-part message in MIME format.

--===============2062224411407391623==
Content-Type: multipart/alternative;
 boundary="b1_jpGFIhpA3v5wnGGXwLTItYCYUu1uPweFlpxNVoPJTVE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_jpGFIhpA3v5wnGGXwLTItYCYUu1uPweFlpxNVoPJTVE
Content-Type: text/plain; charset=us-ascii

M,

Thank you very much for your insightful reply. 

I will proceed with your suggested approach.

Best Regards,

\-Kurz

--b1_jpGFIhpA3v5wnGGXwLTItYCYUu1uPweFlpxNVoPJTVE
Content-Type: text/html; charset=us-ascii

<p>M,</p><p>Thank you very much for your insightful reply. </p><p>I will proceed with your suggested approach.</p><p>Best Regards,</p><p>-Kurz</p>


--b1_jpGFIhpA3v5wnGGXwLTItYCYUu1uPweFlpxNVoPJTVE--

--===============2062224411407391623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2062224411407391623==--
