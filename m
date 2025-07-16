Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F3DB07227
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jul 2025 11:47:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D69C4386624
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jul 2025 05:47:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752659258; bh=VY3ns9GLc9vZNTV5TFChwTWLt3/TWY3hsK+Q3wBd6KU=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=mzXBSndEse9ApcZk0oWlD3O7ZozZWmsgfiyDU5kN7BoL89fV9tEmleq0Dj9f6PWPj
	 3vVknyh+XfVTuUngaUJ/HBLP2PnGboxbnohuiCMilHS/gsBzAVAomwsx3Uhb8JpBYn
	 UOMquN2d2XevQVFex7AzTujGErxkKDN9/cbkgYhCWzGFjem9NcckBmGHrs351YcT5j
	 Riqw/wLuZ9bMhQNRVVI/wXEn/+DKw9rt2Z12MqBaTC9xAWnyYsWRCH4oXRuQ0iRV6y
	 KkUp0vHYe+XU1p4wioyfHXHQE8GHLAf72byERYnvr5I7sKlmPwP3U7Xh8TOuuUBe3v
	 riwMUSUeS5MZw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2FB7386309
	for <usrp-users@lists.ettus.com>; Wed, 16 Jul 2025 05:47:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752659242; bh=roJm8ATAPyUBMqcXCuH61YLsN3nD6K9gWCGa5ggOGrQ=;
	h=Date:To:From:Subject:From;
	b=TK/xhH+jm50bHuPPpQtswe2LMBNNjbk6NfEcNEFFwLzg5rOVGMX6U5QfSAtuWzwAt
	 1QOa3fO1siTifZMi2n+QooMZkL/eyulA9GDKd72cflrBX5GcLqHlCRsBETXvL5pPmr
	 Igpzwy2ogXU//BIyjQM1wp1O9zQbY/fJ39pWBLGXu/qsaLn4RxKzOO0N062Sk9rzC0
	 CnYisn2/pcZ8CqVjOntt6jmbLNN08BmPeXnNCHsI/FIKsZrGGFPuPSohTfZNZIk1i9
	 ofvLN4wWQFOIeC4mspzMiQy1mWMlE5kYyaEn93WiFKtRQTYZM0PtoJ9glG6rbnirUu
	 0pA9LlFRLTrKw==
Date: Wed, 16 Jul 2025 09:47:22 +0000
To: usrp-users@lists.ettus.com
From: nirkicatal1@gmail.com
Message-ID: <n69elKfNNlotbfMhQhYgVn799jSTJPogptvWH0shE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: ESI3Y3TV2XASQSLXVUOVBSCQJSLNFFVO
X-Message-ID-Hash: ESI3Y3TV2XASQSLXVUOVBSCQJSLNFFVO
X-MailFrom: nirkicatal1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Custom Metadata
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ESI3Y3TV2XASQSLXVUOVBSCQJSLNFFVO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8543039886427542201=="

This is a multi-part message in MIME format.

--===============8543039886427542201==
Content-Type: multipart/alternative;
 boundary="b1_n69elKfNNlotbfMhQhYgVn799jSTJPogptvWH0shE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_n69elKfNNlotbfMhQhYgVn799jSTJPogptvWH0shE
Content-Type: text/plain; charset=us-ascii

Hello all,

I plan to add metadata in my custom RFNoC block, reading the RFNoC specification I noticed that the rx_streamer and tx_streamer handles metadata. my question is:

Is this the same metadata specified in the context CHDR messages? if it is not, how can we read at the host side, the metadata added in the rfnoc block?

Thank you.

--b1_n69elKfNNlotbfMhQhYgVn799jSTJPogptvWH0shE
Content-Type: text/html; charset=us-ascii

<p>Hello all,</p><p>I plan to add metadata in my custom RFNoC block, reading the RFNoC specification I noticed that the rx_streamer and tx_streamer handles metadata. my question is:</p><p>Is this the same metadata specified in the context CHDR messages? if it is not, how can we read at the host side, the metadata added in the rfnoc block?</p><p>Thank you.</p>


--b1_n69elKfNNlotbfMhQhYgVn799jSTJPogptvWH0shE--

--===============8543039886427542201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8543039886427542201==--
