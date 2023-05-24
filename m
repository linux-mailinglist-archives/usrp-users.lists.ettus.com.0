Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 760C470FF21
	for <lists+usrp-users@lfdr.de>; Wed, 24 May 2023 22:23:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8476F38492A
	for <lists+usrp-users@lfdr.de>; Wed, 24 May 2023 16:23:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684959784; bh=MnVCt8qeHjQxg2o5bDoJ0aHJLPsIeoxX+AyqiYSaGiU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=fRmjya+rDqXGc+gACgwAOYW5EIeq51z8RqEWR01LF77fIFlsWHaJ6CskJCQXB4wVr
	 BF75/CIZxBcal2AH2L/abgUk8mUbsCe9WU/GJOXxDnnyQKYk0+/Jql5niJJEoGzsTE
	 t/cg7NHd0C1X+tyZbxcZC4z2oLieRCpCjkOGIG582nzZ4rcywur2Uh6VsjkIFffcgO
	 pvxjFPOOPisH4x9XuXBg8Fh5kXmkF+X0OET/7yI5RAGmJkI81cQTe9w/61SHyarTBV
	 JPAeUk81U2a3koyJouqPMQ+qCSfA/imf2L15gqc5p6Jn7rvPoSB91RCXCmAoRPadEk
	 1JHRpYTU8PX2Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84BCC384176
	for <usrp-users@lists.ettus.com>; Wed, 24 May 2023 16:22:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684959727; bh=a3qZHIuNWAxKlm7kr3tItm9Oz+wiF3txmDl27qKf+c4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=OZ4xq8ksULrXDQ3SzW74k/0e66uH7Dz4+As+O7+1pZeswsU9X45tFijxnwgmv8OxT
	 MSdsry6Er3AY6Y1bLePsxtV5kwik6R28L1aIduzTtkHhQTV6grHH0D5WhI+WBXIxt6
	 aKjSqlVGhjFX/fVQLipzQ5yGJw0YKienoH46Ba5Le6bLIEqO5Q9F6YsxPmI5KrRf8c
	 mioFH5k7B7judhnIXKAwm3Zet4AV8gI9odvXYeZQZqtDIQZ5D/duNimYayJ1Uzo/qq
	 Prhn3k8t6TVPts3EmNW0jBKYqpkw8ymJDdm7BZxltVwZnYo4jduu+57A6CQbmWj2p2
	 eB9n5jaX2Sk9g==
Date: Wed, 24 May 2023 20:22:07 +0000
To: usrp-users@lists.ettus.com
From: mena@chaosinc.com
Message-ID: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: N3jF4D44KrigWSTszhFCaZz40da7eYNodadJDTShA@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: YZDIVFQR3JN23AJEENVFXBAFGLXUGCHT
X-Message-ID-Hash: YZDIVFQR3JN23AJEENVFXBAFGLXUGCHT
X-MailFrom: mena@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YZDIVFQR3JN23AJEENVFXBAFGLXUGCHT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2964241828920863317=="

This is a multi-part message in MIME format.

--===============2964241828920863317==
Content-Type: multipart/alternative;
 boundary="b1_W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs
Content-Type: text/plain; charset=us-ascii

Thanks. Two follow up questions:

1. For a given sample rate, is there a way to deterministically calculate the group delay?

2. Why do I not see the same delay at the back end of the transmission (i.e. after the GPIO goes low)?

--b1_W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs
Content-Type: text/html; charset=us-ascii

<p>Thanks. Two follow up questions:</p><ol style=""><li><p>For a given sample rate, is there a way to deterministically calculate the group delay?</p></li><li><p>Why do I not see the same delay at the back end of the transmission (i.e. after the GPIO goes low)?</p></li></ol>


--b1_W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs--

--===============2964241828920863317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2964241828920863317==--
