Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F4128531F8F
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 02:06:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B592838431E
	for <lists+usrp-users@lfdr.de>; Mon, 23 May 2022 20:06:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653350773; bh=nusZIPQBt7aIWwP58FCnsuxzHANlZt+TywI/+L3YT1g=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=sv17hWuNxLTJQKXik2cLV4iyQzSfSmaXEdxR3OaRG3YZxzrC4X0eXuC3TrhxAd+L/
	 Y5oWpPBrVTJlEUqqVOKZ/zIXUfkS3tMBPWM5fpcIMcBfa6QqnLSXfRhrJ5+XbsBRqQ
	 zsP4iDyxlFUD8AhUvIwEB1kMoCu6Kg2TeqkJWvIqEynpyFHgJymoQSPctFfqyXFZ/v
	 AaGBkFByVaqZlmF6Y8x5ZIre1HxZINokxTK1TzJ+Upf1pAzdvzWiYgg8vWfFmq7rWy
	 IvPseEqyY1PdRAz6wnj7k2+VPL+5f/aW8rNEVcGxARB5o1YBy0sBKfR/2DlSFrU79B
	 rv+DIiDwWCkFA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C28F738430B
	for <usrp-users@lists.ettus.com>; Mon, 23 May 2022 20:05:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653350702; bh=rsjVZuDRVHQbTzrTSNSR+sQcwpJKj7fIBimV4YijKDk=;
	h=Date:To:From:Subject:From;
	b=ElQFb6gtPgIJA5DPwlItE3btwAfT9zsu2gjBO5mr0LSPXUb5acKx7aGaYOs0Be4iG
	 DMBoGUHVc8i3cxyLGlwz+VkPzSusMOW4r/6N79USTR3zAKkzQcY0McOPPGhUmU/ezD
	 hSfCQr4e6vv8kysJ+Vem7QfzWJw6LeQfGo3Fs6mW9vmwcO99ufYxdcvIFFOSIxFpQv
	 Q0lcyFhcfBB4cUvW3Opkivn5VdzsaOf2uWD4ezbpWneNuFmNEJwKDA8xbM8NPOdG12
	 N+wPkGn6+1oJkAnlp+CvZK2rP3yJwH1I/BHaWRCNvQ2Pp/QQFfCWDf/TQrUd3Njy5X
	 H9V2E0548Y7Kw==
Date: Tue, 24 May 2022 00:05:02 +0000
To: usrp-users@lists.ettus.com
Message-ID: <HvKzjIPrreuUfG44SMIycq2AdphCt6gpAlsXc8mg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: AHQYZ7CCNSGP5RCPCZKMZQ3TJQBKGM3Y
X-Message-ID-Hash: AHQYZ7CCNSGP5RCPCZKMZQ3TJQBKGM3Y
X-MailFrom: rsubbaraman@eng.ucsd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Timed command gain changes on TwinRX + X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AHQYZ7CCNSGP5RCPCZKMZQ3TJQBKGM3Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Raghav Subbaraman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: rsubbaraman@eng.ucsd.edu
Content-Type: multipart/mixed; boundary="===============5514078501032473653=="

This is a multi-part message in MIME format.

--===============5514078501032473653==
Content-Type: multipart/alternative;
 boundary="b1_HvKzjIPrreuUfG44SMIycq2AdphCt6gpAlsXc8mg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HvKzjIPrreuUfG44SMIycq2AdphCt6gpAlsXc8mg
Content-Type: text/plain; charset=us-ascii

Hi,

Is it possible to set the gains using timed commands on the TwinRX on any version of UHD? This is possible on other daughtercards like the SBX and CBX.

Best,

Raghav

--b1_HvKzjIPrreuUfG44SMIycq2AdphCt6gpAlsXc8mg
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p>Is it possible to set the gains using timed commands on the TwinRX on any version of UHD? This is possible on other daughtercards like the SBX and CBX.</p><p>Best,</p><p>Raghav</p>


--b1_HvKzjIPrreuUfG44SMIycq2AdphCt6gpAlsXc8mg--

--===============5514078501032473653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5514078501032473653==--
