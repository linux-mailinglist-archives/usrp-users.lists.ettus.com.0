Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C656FE534
	for <lists+usrp-users@lfdr.de>; Wed, 10 May 2023 22:38:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D4F79384617
	for <lists+usrp-users@lfdr.de>; Wed, 10 May 2023 16:38:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683751086; bh=H4F7a6yDbsI2r6vS+/sHg/5BSZUHlAfdktw5IAiXpcA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QYfOytfLyLP49lJO0MEc+D1oh9uK64tCyTBs551skmFR3wqJ/b1akX/4Ru1QDwJwg
	 MI4ZPqg36Y5NpcQKNqSgN+3mlZMwz2JJEkegHyBJkczJ21zMfW/8BmAZO+TSdJkwiR
	 65+vhGk9EsigaPHWtPGN8+QdgFbZn9yanjAo/Cgoc5RJxNqikqR3npkgJl9ci+SvQI
	 nicUUkaUMVXPml2R7tnXn+EQG+Q3IuZUB6ml6mbTQdKK0VNO1bqxnKK7xzcGSG5WZq
	 Cxd9iNKca+1GJzQ/cEbYzmd82uIWK+2bPtihqqVCvlNex8EGbwGKXHz7V5Z14OvAZG
	 yQi0Ws2M6+D/Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0433B383C0E
	for <usrp-users@lists.ettus.com>; Wed, 10 May 2023 16:37:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683751047; bh=Cu8l55shdtZrs+Rsjt5ttLQcI657Y626tG/D5vX/MlM=;
	h=Date:To:From:Subject:From;
	b=aojwYJqdnLE2N/UxVTHSsz5ORA/jZr1gZILv8N8ydGxXo1xjwmohHgm1TFF2Ocng8
	 Z0ABK7eNSxHuO9BDLaGxt/BxuBuj7+43u+nihbKoe1fFTumffJl9ATVYdZf0FUBtCW
	 dzPv/x5UHaxlzXIizdAEyE7CNqCXONk3b+k9FYq3gjAPRya9pqqsVavQ9JcuEOpnPQ
	 yW+zUvkiApqT+5ct7eKeFdbkl3RIg6K2iqNlJRkSGoR2H9u2zQRv57WqjW6298vNFn
	 VFTukY+uD8YnWsSk6SNuepOHV7QG1+jsKz4alq/CxQskXXQiiXoGt2ldrRQpjJ6GWw
	 RPiQ0l9C8HsVA==
Date: Wed, 10 May 2023 20:37:27 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <JBlKpPgtdo5G1e2oA1LYO6Pqn2aagtT2mvqIBAEp1I@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: CPQX4EBJVI2OIWSQEFULYLASR2RBLXML
X-Message-ID-Hash: CPQX4EBJVI2OIWSQEFULYLASR2RBLXML
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Setting GPIO Input for RFNOC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CPQX4EBJVI2OIWSQEFULYLASR2RBLXML/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8544544139599858562=="

This is a multi-part message in MIME format.

--===============8544544139599858562==
Content-Type: multipart/alternative;
 boundary="b1_JBlKpPgtdo5G1e2oA1LYO6Pqn2aagtT2mvqIBAEp1I"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_JBlKpPgtdo5G1e2oA1LYO6Pqn2aagtT2mvqIBAEp1I
Content-Type: text/plain; charset=us-ascii

Hello,

I currently have an application that needs to take GPIO as an input. I added the GPIO wire using Vivado to my custom RFNOC application. How do I set a GPIO pin as an input in the uhd software? Do I also need to build a custom application for this?

I saw a function usrp.set_gpio_src with a some application for custom RFNOC modules, but it appears to be only applicable for GPIO Outputs, rather than setting GPIO as an input.

Thanks,

Joe

--b1_JBlKpPgtdo5G1e2oA1LYO6Pqn2aagtT2mvqIBAEp1I
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I currently have an application that needs to take GPIO as an input. I added the GPIO wire using Vivado to my custom RFNOC application. How do I set a GPIO pin as an input in the uhd software? Do I also need to build a custom application for this?</p><p>I saw a function usrp.set_gpio_src with a some application for custom RFNOC modules, but it appears to be only applicable for GPIO Outputs, rather than setting GPIO as an input.</p><p>Thanks,</p><p>Joe</p>


--b1_JBlKpPgtdo5G1e2oA1LYO6Pqn2aagtT2mvqIBAEp1I--

--===============8544544139599858562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8544544139599858562==--
