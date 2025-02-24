Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C38FEA41967
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 10:43:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1F6F386270
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 04:43:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740390196; bh=eyb7QSutwu7G4RlRfCsiS/BZx1anObc1/gYl/xA6Xv0=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rc9zhxL5ePddnZfV1jfLBUVljgLqQacAGdV1xhUtqZ0i2OmWcllkR2g154XQM7uM0
	 WcKaO+s2aqvT7aRm1Dn4S5O+KtQsEA99QfhZ7TEHuj/EfvQNPI53tYb6oaTls6Ga84
	 9t1YKUiYtm1SVaIaWT8iE5R9X5BvJaWu5UJ/oqeYEJSbI6lhFTyQrZdL8cVJvc0Taj
	 5g+xFqmQ+u0N0Ycg8dMsTii7A3fihv5YfqUsaHqgmUn/Tm9OSz6LcMDyPH9VQXuuMD
	 y2a1UCkujcHBW9n+lZ/xSy9lFIKvVibJDtTpkdsg6ROEkHHj7dSkhyx2pRbtsTV+hd
	 o1IbvtsFIaD1A==
Received: from omta035.useast.a.cloudfilter.net (omta035.useast.a.cloudfilter.net [44.202.169.34])
	by mm2.emwd.com (Postfix) with ESMTPS id 0034C386216
	for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2025 04:42:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="wEQCkZ65";
	dkim-atps=neutral
Received: from eig-obgw-5008a.ext.cloudfilter.net ([10.0.29.246])
	by cmsmtp with ESMTPS
	id ls2AtVRpmzZPamUyftBMQw; Mon, 24 Feb 2025 09:42:17 +0000
Received: from vps.tictalk.in ([119.18.48.61])
	by cmsmtp with ESMTPS
	id mUyctcC3IZ8YemUyet3WGR; Mon, 24 Feb 2025 09:42:17 +0000
X-Authority-Analysis: v=2.4 cv=LMZgQoW9 c=1 sm=1 tr=0 ts=67bc3ef9
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=T2h4t0Lz3GQA:10 a=j0z1oGNQ4lYA:10 a=1bTLB4RffXuS0f_zVUQA:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=IOVrdXkZsZi_Xkr5h5Fc:22
 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:Subject:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5ttGvZxx4TLzh8whyOVH0LbD6ldaZ3pgS6ug02QGyOU=; b=wEQCkZ65TkE2qStsGYvnuIspjB
	c7pRRqdpRi8aR+IbdjIf6pg22po8LATI9Q/07gKj2L2wnRkuNdNzy32qggdpumr1zmsDhsr2zUpES
	4wYVBuVV1niRqYTHW2wMWSs1bhjf5vJaPrB20ZDZGNz9Uljq/VM9YS8hdbd8tWChbF/BH6adjv6KS
	lQk+Z+yOg8F5CAonnaHISqUyeiXb29MTd/sLjlJh6nFndA+Tg6wLaF3tz1k8pOw6FugGrsNNPcIPV
	sd+78D7TEsnswv1G7wTbT24BmiZcjBm4aACng6Z+MQzYX/r6byxjYt79YdvXutF0dmhBw2wYCegH1
	D4xJjkcQ==;
Received: from [::1] (port=51442 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tmUya-0004Z4-0H
	for usrp-users@lists.ettus.com;
	Mon, 24 Feb 2025 04:42:12 -0500
MIME-Version: 1.0
Date: Mon, 24 Feb 2025 04:42:12 -0500
From: kavinraj@atindriya.co.in
To: usrp-users@lists.ettus.com
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <2165ec090211cdd30453512262418412@atindriya.co.in>
X-Sender: kavinraj@atindriya.co.in
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.atindriya.co.in
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - atindriya.co.in
X-Get-Message-Sender-Via: server.atindriya.co.in: authenticated_id: kavinraj@atindriya.co.in
X-Authenticated-Sender: server.atindriya.co.in: kavinraj@atindriya.co.in
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4xfL8TLafx78bKEgfwsyego6dfuVqCW9SlHkkY9/Bp96XEeEgNjE+pNYE0H2nTCLWumHuMKlu7s6mZzf8+1v9kSw5CTkam1LLUaCfc61ZlGDCB6ETUhzz9
 2ZmNZ1RQCwxd7TS5tO6eT+6/Eynys292S42AgrPXaXmkOHtxp+jJTC7HMH4DrqW/Wd2S36SmOzyWY3DD6ed8XsQ6wjp+h8pXT2Y=
Message-ID-Hash: XR4IGMNTFZD4FAGS67K7QI3WTQG2EMS7
X-Message-ID-Hash: XR4IGMNTFZD4FAGS67K7QI3WTQG2EMS7
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] REG: GPIO Toggling
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XR4IGMNTFZD4FAGS67K7QI3WTQG2EMS7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
   I have written a c code for GPIO toggling in USRP B205mini-i board. 
The pin should be high for 1microseconds and low for 1milliseconds. I 
have given the c code to verify whether it is correct or not?

     while(1)
     {
         uhd_usrp_get_time_now(usrp, mboard, &full_secs, &frac_secs);
         uhd_usrp_set_command_time(usrp, full_secs , frac_secs + 1e-6, 
mboard);
         error = uhd_usrp_set_gpio_attr(usrp, bank, "OUT", 0x01, mask1, 
mboard);
         uhd_usrp_clear_command_time(usrp, 0);
         uhd_usrp_get_time_now(usrp, mboard, &full_secs, &frac_secs);
         uhd_usrp_set_command_time(usrp, full_secs , frac_secs + 1e-3, 
mboard);
         error = uhd_usrp_set_gpio_attr(usrp, bank, "OUT", 0x00, mask1, 
mboard);
         uhd_usrp_clear_command_time(usrp, 0);
     }


Thanks.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
