Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D45DC853937
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 18:59:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 295E6384339
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 12:59:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707847150; bh=ZvHG8uc901UoG3fPeos/lp7maGLTTi9DcWhEp9y8JUs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=m8t/KXrTaCrmfBT7xgxekmbPwFXeB3C1KHHgIcz/A8RIk3P4zwUeLsEMwnwLRwtgO
	 kn6ww8KprK4Lg2TX7CFa1ZurGIksthshcsj1BBumPcHnNT9ZVfmgsqs3Dqycvxg8J8
	 jK1gu7p0ow2xMKbkOmIDyG6mzr2UVAekRjnyi3uOPtaDhlEbcLEm5D/JOsC4XKCfc0
	 eHjZYXCaTLcydcOqKrDYq/qfU4ItkT5YpV1ZJ/M/JeYcMsJzyhaafGkFpMhi9zkKp5
	 t96su6uIIl5s9htcSNGaCed+XGpAdInDkM/8IY4KwiVZEV5/vJIfliJM/p0rJZQsWo
	 rYDks859RDQJQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69334380E27
	for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 12:59:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707847145; bh=1Hu9ubxPYQgClhP2QWGhpJxVv6je+byVJQAWS/4mEZw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=rvaTWr1JWO/EgX8wnLt8gWcYhFk2/5yrLjrigW9bWNq2CDC0BED0/+6Z+vvmZvY38
	 dnUYZFl5FEHZ4qpFqo9P0H+8UFxgiYDqulOkUiLIWFzrXOZdpASmN3fWfazmUgNzol
	 pSMuHjxj0oiWVhCFdA2/hz5/74DjFrnwTVTsDJnwcfFVTHftq7SBrk8EI2gyrVmD7r
	 coBLuda362C/mvs8CSIz63Su0vLVhqTgmk4qevIZfK9HOIZLStNK2rnE04coeOGgtW
	 048O7q6YtSO3kgKnHjecBWM+zMN3VQWiorc+EPV+qj/AIMCJeEN/uR8EXvP7Rpz7Rp
	 skAqMdo01mILg==
Date: Tue, 13 Feb 2024 17:59:05 +0000
To: usrp-users@lists.ettus.com
From: jnunez@cud.uvigo.es
Message-ID: <6BeZc82JKULytaFwVnxIRlQ2sdg5XWjIL2B5czNc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3FFDA1C0-26DB-4C92-B5F2-2C822B016808@gmail.com
MIME-Version: 1.0
Message-ID-Hash: HW6F7YU3XQCQSYKTROAW5VLKW7DDB2W2
X-Message-ID-Hash: HW6F7YU3XQCQSYKTROAW5VLKW7DDB2W2
X-MailFrom: jnunez@cud.uvigo.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't set gain on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HW6F7YU3XQCQSYKTROAW5VLKW7DDB2W2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1542990306722626735=="

This is a multi-part message in MIME format.

--===============1542990306722626735==
Content-Type: multipart/alternative;
 boundary="b1_6BeZc82JKULytaFwVnxIRlQ2sdg5XWjIL2B5czNc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6BeZc82JKULytaFwVnxIRlQ2sdg5XWjIL2B5czNc
Content-Type: text/plain; charset=us-ascii

WBX on a N200

--b1_6BeZc82JKULytaFwVnxIRlQ2sdg5XWjIL2B5czNc
Content-Type: text/html; charset=us-ascii

<p>WBX on a N200</p>


--b1_6BeZc82JKULytaFwVnxIRlQ2sdg5XWjIL2B5czNc--

--===============1542990306722626735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1542990306722626735==--
