Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56152774733
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 21:11:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6D46384A81
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 15:11:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691521869; bh=ODR7rMGPJDvPbneThejNng5cyMiFrYw3a923Dg1esjI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kkrZlvaFk6VGazV/eGo9RFZVcW9RVlwseCmNjF6IXiSR1cYbtbij7pW5Za5fFY/Dx
	 bsnnPp+OjaQZ7FxXxuVq2G+87qFMOyvt5///bvfVUYY4zmjnqOFOtASYpkFSROliWp
	 kYtAl4bKbZguc04oaa6uXoOkztloKjA6VYg/PKLo520t1EkjOCobLiT9nhXl5nTBUg
	 FumoQaHPABDOOBhJYjPWqn0pv8OhSoSqQdQG+voL71x4rOXtuwJQv50j0onD/J0ShR
	 7n4cVDeGHE6L0WdgTq/lRO6rQy/zrGGDjWZNtKpfoGULBzlv1DY/OsbuS8kMiWQdSI
	 2agYkCU1xPGhw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 149293848C8
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 15:10:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691521834; bh=93G0bMUx7NePHrQ6nFDhy/yCIanA577Vwss6wUIWCxY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=zLbbQYudT4PwIlw7eHXciG0Z0lCOuy02cfOPPFNokt3otpLvgXO5XDBUmyDnmExnz
	 jiZZJ0agxGDVn7671g/OHVmnB/hUfBUHj1yteEtRwJw50o5gIu4f1xaxhz1vdH8X02
	 yyrtAgPnYhdXeOQHc/RUdXls2Tneyod4caxByjt/YLGiS7hZ2pWKQ1bsm3OZbJM8iJ
	 fNR90i5wVfECjwGbxRHZ/7wETqB5wTrPUD0usW88t69g8ZYt4PZG72d97hAariOacO
	 puw+Bj4/4IHmDwlypHCIfb9nYLr6o9tOE6w2Y0rrcxAfBLJn2wJnIWIlWcnWxtzKmM
	 5PjfG6JLLMCGw==
Date: Tue, 8 Aug 2023 19:10:34 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <ao0JIoU50WAMvelJuwxPiTsmdZw7iFBKEgPba0CYM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 308f91e2-067f-9fb7-9ab1-2302de6e3f25@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2C6U6ODT33AA54D23DP25BCNRMIRQCOW
X-Message-ID-Hash: 2C6U6ODT33AA54D23DP25BCNRMIRQCOW
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2C6U6ODT33AA54D23DP25BCNRMIRQCOW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7439008925896965955=="

This is a multi-part message in MIME format.

--===============7439008925896965955==
Content-Type: multipart/alternative;
 boundary="b1_ao0JIoU50WAMvelJuwxPiTsmdZw7iFBKEgPba0CYM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ao0JIoU50WAMvelJuwxPiTsmdZw7iFBKEgPba0CYM
Content-Type: text/plain; charset=us-ascii

Awesome! I will get in touch with them ASAP and comment here later for the records. Thank you for everything!

Best wishes,

Eden.

--b1_ao0JIoU50WAMvelJuwxPiTsmdZw7iFBKEgPba0CYM
Content-Type: text/html; charset=us-ascii

<p>Awesome! I will get in touch with them ASAP and comment here later for the records. Thank you for everything!</p><p>Best wishes,</p><p>Eden.</p>


--b1_ao0JIoU50WAMvelJuwxPiTsmdZw7iFBKEgPba0CYM--

--===============7439008925896965955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7439008925896965955==--
