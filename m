Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C366D65C8D4
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 22:20:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1DE1438423B
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 16:20:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672780827; bh=AeOdZDahmMqWhNbKiMMh6VK+VOoZe8j/ni33kv/GMHU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LdHALIvV8i9Af4OywXnXCaG0Vl5AF8rkhv67IrdLLVYij9kQUIfOeTYffycl3nFJr
	 ifhpgNrfe8XXHenSWfzpzD4e6b8Zuls7luhQOBlaSbXSCxHWm3kWxh61P/kgX0s/1k
	 u+EOhMptRxBHXeZHPq5t+0/N+hvX7dErNH1oZGqIGWiiD7Bb+t3HgrNE5JCN/TtfLb
	 SOtR4j7eefy43os0Ahf7SO+gDQzFmkbvVNoaHcA/I4ZqGwOkGIuEqx0sn+0dbFna6K
	 pakfNS6lv4tKjmeLq2BKxXkmENx94WlDxwEtgtw4KBLEoSOx5EugH+NdBRwHuzHN+K
	 5tGpvj5NjYtnA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8EA1384218
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 16:19:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672780747; bh=lEDN3JZpAtTBzh9db0KOirtB6DmpyvjiIwdy9sJea2E=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=R03w031cpTjphBll8cmQVRY6xD/1eNz+plLfZMPB+PHZRkRr47nkxT2JTG4YE+Jfg
	 eIsRppRre3UlJxcJ2NxVxBEJQCskortaUnK8RNyfSsl2jqSZBXyqk8gfck69gnqMQP
	 ygG6YjGzBbcrSbPsFp2FMwOfeVZmVyIfMysR5rRYkt1DoG85YnYcgrB/VPhjr10zLT
	 uJh/EZ6UTnvO+Hhlq4BOFoU4BzQRqxsWC7xIl4q66c1H14ZdaTuF/GyeqjSPdQE6xI
	 uLmEAUO1ocnL548sWy/WAy7nAuG94rzeGdooABTyiterfUPZPH7ObcPS6iFUHbkoR8
	 2G4HdXhQFgSLQ==
Date: Tue, 3 Jan 2023 21:19:07 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <sDS1BJQHgKwfqxGIQih4mYQ0uZwBZYprhs5Kf80fqfA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=ihtCc50wMyRS0CQd0SECnE_-+Z6N5dkVJVp5a4Hy_26Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: T5T6KFSO4XRF7OXYCAHJMYOD6GDUQC2Q
X-Message-ID-Hash: T5T6KFSO4XRF7OXYCAHJMYOD6GDUQC2Q
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building x310 FPGA image for UHD 4.3.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T5T6KFSO4XRF7OXYCAHJMYOD6GDUQC2Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2156174561671348721=="

This is a multi-part message in MIME format.

--===============2156174561671348721==
Content-Type: multipart/alternative;
 boundary="b1_sDS1BJQHgKwfqxGIQih4mYQ0uZwBZYprhs5Kf80fqfA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_sDS1BJQHgKwfqxGIQih4mYQ0uZwBZYprhs5Kf80fqfA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I noticed that part of the manual but ignored it because it sounds like i=
t only applies to the n3 and x4 family of USRPs, and I=E2=80=99m using an=
 x310. Is that not the case?

Regardless I=E2=80=99ll work on installing the patch and try again.

--b1_sDS1BJQHgKwfqxGIQih4mYQ0uZwBZYprhs5Kf80fqfA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I noticed that part of the manual but ignored it because it sounds lik=
e it only applies to the n3 and x4 family of USRPs, and I=E2=80=99m using=
 an x310. Is that not the case?</p><p>Regardless I=E2=80=99ll work on ins=
talling the patch and try again.</p>


--b1_sDS1BJQHgKwfqxGIQih4mYQ0uZwBZYprhs5Kf80fqfA--

--===============2156174561671348721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2156174561671348721==--
