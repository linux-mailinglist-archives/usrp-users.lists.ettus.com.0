Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA81AAD8D14
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jun 2025 15:27:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 097C738628C
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jun 2025 09:27:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749821223; bh=du4snz8Nrb8dmIfG4UDWQMV3yLL2+4RiZoKODL+B+X8=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=R+BQxG7StTqPf6T2JBpj69CHvn7I2gwWTJrV6x9GC6W2jCOS6DHLiWwmWjB3/UVOZ
	 IFaSFWaNPattyUqz1jpVkdnQDVvPZFMYjrsG72JNxhHMFVENP9ABVEJQcAgDJg1IjX
	 OINur1zo2e2jNLRk9HuM9CW0kLssHPzwInGryKOe6KA+lpfivR38gon31NayrF/kLf
	 eGKLtJtcBwgr6Nc8gb7jNGxPukmLEAvkr++onkDLMd8U4D+HB7exke+S6FmvXPcQE1
	 GxSmyixRY5/8ce604ecZ7DhsxaAoGXKn33xP6Hl+CySIHbrSgJ6UxHBxrgc5cyptT3
	 oNeAUJVjobvVQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BBBD38620C
	for <usrp-users@lists.ettus.com>; Fri, 13 Jun 2025 09:25:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749821154; bh=1Czx0gtzbBkxj15pT8XpwNTZoJeDAooYoUEuWQ7NP/M=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=kWJVF2s2isvkz1MgSknawRCjyWvDNZyqQLZXoisZrDEGZrkXnZuJLGizvS/S/4Nob
	 qr5WwkbVdRgCBrezIVMH43mLuj1SuhISCqvyY4IwXqmZc+2OqKIMKqeNQbHcYBwNBN
	 0+6GhvlB1HaFAYUJQAWjvCiNZ+Y9uTzxZUl3IHTt18g0s58gnk4nJiq0zT8HyAWzHC
	 0wKG3u32xwFyYZnxely44ROhv7FXJwSwlFTbQONTmZRgM6AbC+/FcKgbhdCzXH+S0U
	 e26m3cobnSRY4wU7wZX2MjO8hFrPC51Tv9j5m8WwfeoKqg+gwbaGAA/vmE/Ft4YlCT
	 6EJb9awvzOqjQ==
Date: Fri, 13 Jun 2025 13:25:54 +0000
To: usrp-users@lists.ettus.com
Message-ID: <Gp1Fanj0PfgyO32WWnwEXShqcJXQz389ajdehYRBag@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: SNCcre76vsniBhNvCxZvImtLPkldHahRk3nvsbtH94@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 2UTBAZUC4XJWDSOQNIJEE64KJ2MVMVCJ
X-Message-ID-Hash: 2UTBAZUC4XJWDSOQNIJEE64KJ2MVMVCJ
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to access the external 1PPS clock, from GPSDO, to be used inside a custom RFNOC block?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2UTBAZUC4XJWDSOQNIJEE64KJ2MVMVCJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============7348327182428578087=="

This is a multi-part message in MIME format.

--===============7348327182428578087==
Content-Type: multipart/alternative;
 boundary="b1_Gp1Fanj0PfgyO32WWnwEXShqcJXQz389ajdehYRBag"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Gp1Fanj0PfgyO32WWnwEXShqcJXQz389ajdehYRBag
Content-Type: text/plain; charset=us-ascii

Sorry, I misread your question as PPS via GPIO instead of GPSDO as you specified.\
\
As mentioned in my code example you can set the time_source to gpsdo instead of external

I am not sure if you can get access to the actual internal PPS rising edge coming from GPSDO, but what you might be able to do is add the timestamp clock as an input to your custom block and then using the tickrate estimate the 1 second intervals starting from the point when after you reset the timekeeper ticks.\
This of course would be susceptible to clock drift, so if you need the high accuracy of the GPSDO within your metadata counter than this might not be the way to go.

--b1_Gp1Fanj0PfgyO32WWnwEXShqcJXQz389ajdehYRBag
Content-Type: text/html; charset=us-ascii

<p>Sorry, I misread your question as PPS via GPIO instead of GPSDO as you specified.<br><br>As mentioned in my code example you can set the time_source to gpsdo instead of external</p><p>I am not sure if you can get access to the actual internal PPS rising edge coming from GPSDO, but what you might be able to do is add the timestamp clock as an input to your custom block and then using the tickrate estimate the 1 second intervals starting from the point when after you reset the timekeeper ticks.<br>This of course would be susceptible to clock drift, so if you need the high accuracy of the GPSDO within your metadata counter than this might not be the way to go.</p>


--b1_Gp1Fanj0PfgyO32WWnwEXShqcJXQz389ajdehYRBag--

--===============7348327182428578087==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7348327182428578087==--
