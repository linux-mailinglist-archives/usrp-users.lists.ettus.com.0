Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9F577639A
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 17:19:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE982384ACA
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 11:19:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691594381; bh=U2/y8d3zQZpL5TWuc5ylDdedR5hz+vjhLrDVGR9hR/Q=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ojfNgZK4xG/ATV4sq3qMU+wQOx6v1CB7YgRz+nZeNX87UMoPHRFQzfZg4hDar0hPJ
	 dHlhYhuEZsXSbvpL59+406YTGjGHb7VByPuIDLnECLryhUZj2ZqROlvsFl3/VNLYJM
	 ou+vpRIJD925/NzqPsQv2o38Aa9SvZ89GYw0BbYhpqmbL/croi0GBOri0b61qvVdSe
	 qcnIoelFvKrPf6hECXYRiBKZMfD0vMwmrh28Bn683/oEUR9f1f0IROYyyMsX4bhCcN
	 YaClI6LDOrTElPbn35VY18RvQtpG4U02dr4wg1eUBDgP8s/k9/c1znyOtzwVqTo7iq
	 Ayagdqh3kNuTg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB2CD384AA1
	for <usrp-users@lists.ettus.com>; Wed,  9 Aug 2023 11:19:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691594349; bh=f39Dy9xSLBjWAYgk70zmD1ugbwZt2S1YA9kJFWmJsAw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=jj5sARtxWPwbX9aLOu+8QBs8hw2tJc2UlsqH6ZCdXRk4SuUCm5QggWgYea+Tet3+G
	 C+XoJbTbB3BLEyYag1EYB1ofPC6OmO1OSPTpZZ3/ltXaGolnKWSOz9simzBFeISBxJ
	 ZNpnVc4OJC79kWo/rYjTezYF9+GaTni4HMs+oj4P8d/k+2A3m5IBn4aPiR+edBDL3H
	 KkXxkCAlw83g+V+iAj0KElR9Hz0kTkO5dNjb5/EVt06mCmKHLhvfo6RYU0wXdf62fF
	 BY2nA0+ArL51+wYnf+WAwXvtLFUHy/VupaSb2xNoLb9OSK0ZoaBDRpXRwA8BQ5ddUU
	 oc1F9lCYODyyA==
Date: Wed, 9 Aug 2023 15:19:08 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <6shdw17p9DAFpJv9dPqGRoVZhoxT23bV5Fmlwe0AsI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 75cd44ba-2792-e576-33e9-31662042f96e@gmail.com
MIME-Version: 1.0
Message-ID-Hash: QCONDRWK66J3NYIYEEA3SI2JYA2HT75L
X-Message-ID-Hash: QCONDRWK66J3NYIYEEA3SI2JYA2HT75L
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QCONDRWK66J3NYIYEEA3SI2JYA2HT75L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2063571503810674592=="

This is a multi-part message in MIME format.

--===============2063571503810674592==
Content-Type: multipart/alternative;
 boundary="b1_6shdw17p9DAFpJv9dPqGRoVZhoxT23bV5Fmlwe0AsI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6shdw17p9DAFpJv9dPqGRoVZhoxT23bV5Fmlwe0AsI
Content-Type: text/plain; charset=us-ascii

Hi Marcus,

Well, that makes it clear how such a small file could corrupt pretty much to the end of the EEPROM. I will keep those in mind. I am currently checking the b2xx_fx3_utils.cpp file. I will let the readers know if I find anything noteworthy about the discussion.

Thank you, have a wonderful rest of your day,

Eden.

--b1_6shdw17p9DAFpJv9dPqGRoVZhoxT23bV5Fmlwe0AsI
Content-Type: text/html; charset=us-ascii

<p>Hi Marcus,</p><p>Well, that makes it clear how such a small file could corrupt pretty much to the end of the EEPROM. I will keep those in mind. I am currently checking the b2xx_fx3_utils.cpp file. I will let the readers know if I find anything noteworthy about the discussion.</p><p><br></p><p>Thank you, have a wonderful rest of your day,</p><p>Eden.</p>


--b1_6shdw17p9DAFpJv9dPqGRoVZhoxT23bV5Fmlwe0AsI--

--===============2063571503810674592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2063571503810674592==--
