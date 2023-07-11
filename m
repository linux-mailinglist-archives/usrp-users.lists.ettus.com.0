Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1DA74FA9C
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jul 2023 00:05:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4DE5D383D37
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jul 2023 18:05:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689113148; bh=rp8B4mDb+84R2RXfFDz2XtEgbpWmKT9yzVrbu9PmFYg=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=sE7aQej0rKF39rJtvwwb6xf6VZvzdXajFIeTMARCTZ9T1H7m2WzCANhs8QBwx8AgC
	 nNiAE4vIjUOerh6idS9n14hNZKRSGIiE07aWOxSk5tpsoTcACu/a76SVsjvW0O1Jkv
	 SgJt3KZYeR8FtXzkxDyV3Z7Z/A2xFYiWjDeEga81Z/lYAF18bU+BDLEm2WUDiAG6NK
	 keNDEN8c5h1fmyfQEewKjIv3kZYlOzmj1ecVxVCwXbJo+JLkR7e6DWVycaGwMkRa5C
	 fiGaDibYVo/sB+e/DxnlJ2FNOy32ODSPE5NhImNEYd8uSKygS9HUEVLSgSy8mDepk6
	 shi/xNSBU+DhA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC3A838375D
	for <usrp-users@lists.ettus.com>; Tue, 11 Jul 2023 18:05:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689113134; bh=3SCDq6+Ts6WBi5Z+eYdK+/k+T6J+5Yp3DvAMmIb0Ba4=;
	h=Date:To:From:Subject:From;
	b=xjZlJbTBmn3b3DvSnG7EMdCgyaqjtMR2Y+mPowayXeRs/wKB9dywb72KWE9dkkzo3
	 nLg26RpkxyxSGUupj5ZRQD/tsVWCNySVQFm/mqyDhWKvbuibV9HsC32FFVZ2c436Uz
	 6NXKLn/4Zod/pdDYSjPoJuvNr9V//705QZa/2s3zmpVg6Ftv66IfQSa+/1kAYweSAn
	 LsEWB1ZbSr5y4mAxWoS8T8QRsvetbW85N9xLeVLsYQFZHzT244ZrZfTAElXmZ8+nfl
	 B0USW6LHHhUyYIs+apNH97lVC508CHMeCYs2JZgAlGN53IbJYKoSxvWd9+2ZZm+6q2
	 Bjbq8KjoTrUtg==
Date: Tue, 11 Jul 2023 22:05:33 +0000
To: usrp-users@lists.ettus.com
From: pistachio6981@gmail.com
Message-ID: <9YnclCyuM8dhvKfPda6gbbu2tiFMPovDGKpimJRU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: M3Z37JA3MTEGDWMCORUKLYOLKIEIUFYP
X-Message-ID-Hash: M3Z37JA3MTEGDWMCORUKLYOLKIEIUFYP
X-MailFrom: pistachio6981@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 channel synchronization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M3Z37JA3MTEGDWMCORUKLYOLKIEIUFYP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7894313968405249986=="

This is a multi-part message in MIME format.

--===============7894313968405249986==
Content-Type: multipart/alternative;
 boundary="b1_9YnclCyuM8dhvKfPda6gbbu2tiFMPovDGKpimJRU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_9YnclCyuM8dhvKfPda6gbbu2tiFMPovDGKpimJRU
Content-Type: text/plain; charset=us-ascii

I am trying to use all four transmit channels on my x410 USRP. Each channel needs to transmits a simple sine wave. I am having problems making sure each of the sine waves on each transmitter has the same phase. Is there a UHD command or structure to accomplish this?

--b1_9YnclCyuM8dhvKfPda6gbbu2tiFMPovDGKpimJRU
Content-Type: text/html; charset=us-ascii

<p>I am trying to use all four transmit channels on my x410 USRP. Each channel needs to transmits a simple sine wave. I am having problems making sure each of the sine waves on each transmitter has the same phase. Is there a UHD command or structure to accomplish this?</p>


--b1_9YnclCyuM8dhvKfPda6gbbu2tiFMPovDGKpimJRU--

--===============7894313968405249986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7894313968405249986==--
