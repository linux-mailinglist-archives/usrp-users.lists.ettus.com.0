Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5737B715F
	for <lists+usrp-users@lfdr.de>; Tue,  3 Oct 2023 20:55:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF07E38527F
	for <lists+usrp-users@lfdr.de>; Tue,  3 Oct 2023 14:55:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696359335; bh=7UkzHoC6hBDoXve3OfTOY53aCJ1M1h9SiSN9rAxdJnU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Evyc5GrYzuBdK2UaAP7tn/tBxgKadLmEygzoXrdKF2Qi880lVvQCWTAoH9Ste07E0
	 HA9q8yXzI+IhFa5dYaH8D0Hyw3vZ4O7JbVF3PKhpGNZzsuVtQ666XVpPKBEZoh/RP9
	 X+ThK5JGWCgih5ktizEKgjMAHpV+eaJoamR0r1vX+ISgInC0uDvGQLq6ccmON5Qezi
	 NfgnGiLlOoeT2YDuYWALWq01/aRf7Y00yHIVLPVnPFthWo7KlzUuoDSit5b6j76Hyk
	 v7HqTLpU2zLx9Fsft/qPvS18B+S47XNjgVNTa55skJIzfuFH2oMC+ZP3uR51wLgIyj
	 4kAmzTqBMRv4Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 319CE385041
	for <usrp-users@lists.ettus.com>; Tue,  3 Oct 2023 14:54:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696359279; bh=bu888bfA+/xvH5eHwH3XLD88oF8r8elIIDf0bdLeX6c=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=aJTXYc6zqh90p936ZyeZaT6WwGs9gCVFLEEWmp2z9GMH+IoSzq8iE6hSQdmWBfKM/
	 Q30bdGQySop+FM2hVF0rcaf9A1eGQxXIaBxJaa5vZvjqd3QuyoaUDSRnfIk3Dq52kv
	 YZC6kzat6iNDPnnc/zi1rZl2JVGVCdfMmLLzFYvHd7Mv5jLSLu/k+zUIee1i2ZUmJ+
	 3zj3+hQmO9k0ewa3yseZk0652++GkY0N14w0PrG4ie2jiWBduURmRquMk/hAKHE+E4
	 XnPb2PjWKstqz0LPl5Pm+phb71mYSnP/CEmUCgNrQdlyJLmjcbjSefYtpiH2bNpeQf
	 gnYkn6RrgjL0w==
Date: Tue, 3 Oct 2023 18:54:39 +0000
To: usrp-users@lists.ettus.com
From: blakebaldwin@uvic.ca
Message-ID: <iz6i3QZ3RxYkBuUIXtqZR2mdcy8vyJE5mQWpNVx4AQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: Y0CWTyNWUl1wkvP41EdGFCEjCP3CwUkrnlclzbf3g@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 7MXSD2UGE2PBQGZX763BXJXR65VWRLCR
X-Message-ID-Hash: 7MXSD2UGE2PBQGZX763BXJXR65VWRLCR
X-MailFrom: blakebaldwin@uvic.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Channel B control for GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7MXSD2UGE2PBQGZX763BXJXR65VWRLCR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2632615297659898131=="

This is a multi-part message in MIME format.

--===============2632615297659898131==
Content-Type: multipart/alternative;
 boundary="b1_iz6i3QZ3RxYkBuUIXtqZR2mdcy8vyJE5mQWpNVx4AQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_iz6i3QZ3RxYkBuUIXtqZR2mdcy8vyJE5mQWpNVx4AQ
Content-Type: text/plain; charset=us-ascii

Hello, I am revisiting this issue again in hopes of someone with more familiarity seeing it this time. To reiterate my problem, I am trying to get the GPIO pins controlled by the ATR tied to transmitting and receiving on either channel A or channel B on the USRP B210. Currently I only have it working on channel A. I have tried all of the functions related to the banks and sources and can not find an option which allows me to do this. When trying to run these to change the sources, or even running the get_gpio_srcs, it results in an error message. I feel like I am missing something with either the sources or banks but I can not figure out what. Any help is appreciated, thanks.

--b1_iz6i3QZ3RxYkBuUIXtqZR2mdcy8vyJE5mQWpNVx4AQ
Content-Type: text/html; charset=us-ascii

<p>Hello, I am revisiting this issue again in hopes of someone with more familiarity seeing it this time. To reiterate my problem, I am trying to get the GPIO pins controlled by the ATR tied to transmitting and receiving on either channel A or channel B on the USRP B210. Currently I only have it working on channel A. I have tried all of the functions related to the banks and sources and can not find an option which allows me to do this. When trying to run these to change the sources, or even running the get_gpio_srcs, it results in an error message. I feel like I am missing something with either the sources or banks but I can not figure out what. Any help is appreciated, thanks.</p>


--b1_iz6i3QZ3RxYkBuUIXtqZR2mdcy8vyJE5mQWpNVx4AQ--

--===============2632615297659898131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2632615297659898131==--
