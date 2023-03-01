Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A7D6A724F
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 18:52:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5AB7A383D90
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 12:52:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677693121; bh=kn7E2Y06bWI/DEauXbT7wT4whGPc0BPNgQN8Ix26z4E=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YNVNqIFcGupRXShtTlSYdlItMx8s2Kv/v7oZotAZbjq3OYrbmtok1WTIpp/YDUDEQ
	 BV9yZNU3yx5BQncoYW8CnDiqmN0ka53AIiiW/lhUaRAuFta21ZqAsWEWt7rQudoXEg
	 jcOE+1UFpUbqczak0XGJItRf0kQ/6+Gup4yEytacgVivb5MZBmI/nHjMUMacZxcViX
	 wBvKaOfFZzm39fsRd5B6E68E9jHEAlMXPAPmixZ2GcxTJ6FE6mWBmhxWG9yMvgzV0m
	 UqpScOyAgnuaIfGk+jFIM0YDr2KG1H91/3mlBEhOO5z4Zy4b+eHyOL3ht1Haxx+D79
	 R6SymSZS9XvcQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4B765383E9D
	for <usrp-users@lists.ettus.com>; Wed,  1 Mar 2023 12:50:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677693052; bh=qcADqIbk9cjeJSIY7wOuDWXwt8VFp/4xkBxTb+RM0tA=;
	h=Date:To:From:Subject:From;
	b=jVOECxgR7/fWfJCHoW0aiZ7JgTxT17fYIig1Q/qRTKuPX60IhTVLh3UMBcGS2qK1i
	 RZLJ3lLW0q4kgUc+X1QzxPO9Odkm/JXB2RI+GY3jnBPwz58yodT9uJ6IUziBn6DFFh
	 LRQd56NEicvzZS8G3xhthMzJJVlWAOkCAZ2mskp0RPc2315+L698h2BMJalgpsSPVu
	 aTUUi38jmDRQDCFUvK9ZwvGsRBYjyvIAsMQtmFyl0SZYHR8+s5ycz0kSUiMdgijeEA
	 z8TvKWwAKRKKiXfNapKv0/cDQBxv6SFdIUKbW/tKiiB2YSO3zl8S+2xfiAcslGbGo2
	 6ns1hBzgmiC/A==
Date: Wed, 1 Mar 2023 17:50:52 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <g5fsIidNO02V9n8rYPvvPSoHz82jEKTXJOEh1iYA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: LMLD6DWPIPHF2KQMCT2TNLX3TP3RI552
X-Message-ID-Hash: LMLD6DWPIPHF2KQMCT2TNLX3TP3RI552
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Instantaneous bandwidth on Ettus N321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LMLD6DWPIPHF2KQMCT2TNLX3TP3RI552/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2007650868509641601=="

This is a multi-part message in MIME format.

--===============2007650868509641601==
Content-Type: multipart/alternative;
 boundary="b1_g5fsIidNO02V9n8rYPvvPSoHz82jEKTXJOEh1iYA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_g5fsIidNO02V9n8rYPvvPSoHz82jEKTXJOEh1iYA
Content-Type: text/plain; charset=us-ascii

Hello,

I am currently looking to see what the highest possible sampling rate is for the ettus N321/N320. I see that the highest master clock rate is 250e6 Mhz, However, on the product website(https://www.ettus.com/all-products/usrp-n321/), it says that it can collect up to an instantaneous bandwidth of 200 Mhz, so I am led to assume that the maximum possible sampling rate is 400 Mhz. Is this true? If so, how do I configure my the ettus to collect at a rate of 400 Mhz without the rate being coerced back down to 250 Mhz.

Thanks,

Joe

--b1_g5fsIidNO02V9n8rYPvvPSoHz82jEKTXJOEh1iYA
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p><br></p><p>I am currently looking to see what the highest possible sampling rate is for the ettus N321/N320. I see that the highest master clock rate is 250e6 Mhz, However, on the product website(https://www.ettus.com/all-products/usrp-n321/), it says that it can collect up to an instantaneous bandwidth of 200 Mhz, so I am led to assume that the maximum possible sampling rate is 400 Mhz. Is this true? If so, how do I configure my the ettus to collect at a rate of 400 Mhz without the rate being coerced back down to 250 Mhz.</p><p><br></p><p>Thanks,</p><p>Joe </p>


--b1_g5fsIidNO02V9n8rYPvvPSoHz82jEKTXJOEh1iYA--

--===============2007650868509641601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2007650868509641601==--
