Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFA49FFD3A
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2025 18:56:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9FCE1386133
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2025 12:56:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735840570; bh=9RdsH5hmLynmizb4nQ5uLXRQu+K3Upv3za8Yrd5k4Ac=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=F0afY/UnnZTGRDkb28M5+5b9S0P1QJcmX4KTdewFSeoD4CqKSP/QhVAaIhIm68GVl
	 ju0hWoEvWsOX/MP3w9QpjCpKCi6CWunMSjktpTsTGa6CWvlE+eOkjBqsTlWHq+rtCE
	 BaCoLduKZJ8HXOQlUKtB/HBxI/fJDxUT2epkgWNQeY6AiB1wT4uirUyieiBkGno5Kx
	 Ox6lrilXMdeJNu4LtGHo6BXV9/dXOjUOutV4RXna8g6FElPKwAhx15oOTEHzqgCwWv
	 V5qMDFPz2PiDTU+s0SOk4Jz7kjAeaACB3h7ehzruI3lTD4NzBNv/N2DRg76qjtkNcT
	 TLuEC7RBsXAmQ==
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	by mm2.emwd.com (Postfix) with ESMTPS id 2C487385DE1
	for <usrp-users@lists.ettus.com>; Thu,  2 Jan 2025 12:56:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sakthi.me header.i=@sakthi.me header.b="K9QBI9vD";
	dkim-atps=neutral
Received: by mail.gandi.net (Postfix) with ESMTPSA id B218B240004
	for <usrp-users@lists.ettus.com>; Thu,  2 Jan 2025 17:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakthi.me; s=gm1;
	t=1735840561;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xicR3Ci7BiF0z4nDoPe4r0UHxE38IoyaUKQXKNQgF3w=;
	b=K9QBI9vDwznFx5d5Ddo19PQiHucu37x1LjlqrDxF3xmXhf3/A8bG0xGf+UczeGiwT6ec+B
	esi6Tw7bYx5m8VivFm9kFL8SwXN6T5CHetT8E3NQGEI6R16GtIggc7fc3/PPedU1padnE7
	NrWeBERKGCB+9YFSK7QLs43MC82NY+33oL/QD/K7ORhz6DE9S5MW6yLjjzeGthNpEY/3Nc
	xAOKZss3WbNecIyvZ/b1PS/1zYs4Bed1zN68DCZOE16wYGcPfTnU9ZE4EN5CoYtCe+smkH
	fPM4iDj4xFVXevdnLP8VnAKN6+wwI63Zmjt1xi0dfHITg4qzlsT2PBSXzPl4Hg==
Message-ID: <17bafe57-f301-48ba-950e-4d2f3f99e221@sakthi.me>
Date: Thu, 2 Jan 2025 12:56:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
From: Sakthivel Velumani <mail@sakthi.me>
X-GND-Sasl: mail@sakthi.me
Message-ID-Hash: 47GDYQQQZNEIN4VJBWAOPTTH72SKCTCJ
X-Message-ID-Hash: 47GDYQQQZNEIN4VJBWAOPTTH72SKCTCJ
X-MailFrom: mail@sakthi.me
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Running user application in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/47GDYQQQZNEIN4VJBWAOPTTH72SKCTCJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

I am wondering if the user can run a custom linux application on the ARM 
cores that can offload certain tasks to the PL? or does the RFNoC core 
implementation allow a RFNoC block to interact with an application on 
the PS via the AXI interface?

Regards,

Sakthi
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
